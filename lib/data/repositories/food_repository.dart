import 'package:isar/isar.dart';
import '../models/food.dart';

/// Repository interface for foods
abstract class FoodRepositoryBase {
  Future<List<Food>> getAll();
  Future<List<Food>> getFavorites();
  Future<List<Food>> search(String query);
  Future<Food?> getByBarcode(String barcode);
  Future<Food?> getByUuid(String uuid);
  Future<void> add(Food food);
  Future<void> toggleFavorite(int id);
}

/// Isar implementation
class FoodRepository implements FoodRepositoryBase {
  final Isar _isar;
  
  FoodRepository(this._isar);
  
  @override
  Future<List<Food>> getAll() async {
    return await _isar.foods.where().findAll();
  }
  
  @override
  Future<List<Food>> getFavorites() async {
    return await _isar.foods.filter().isFavoriteEqualTo(true).findAll();
  }
  
  @override
  Future<List<Food>> search(String query) async {
    return await _isar.foods
        .filter()
        .nameContains(query, caseSensitive: false)
        .or()
        .brandNameContains(query, caseSensitive: false)
        .findAll();
  }
  
  @override
  Future<Food?> getByBarcode(String barcode) async {
    return await _isar.foods.filter().barcodeEqualTo(barcode).findFirst();
  }
  
  @override
  Future<Food?> getByUuid(String uuid) async {
    return await _isar.foods.filter().uuidEqualTo(uuid).findFirst();
  }
  
  @override
  Future<void> add(Food food) async {
    food.isCustom = true;
    await _isar.writeTxn(() async {
      await _isar.foods.put(food);
    });
  }
  
  @override
  Future<void> toggleFavorite(int id) async {
    await _isar.writeTxn(() async {
      final food = await _isar.foods.get(id);
      if (food != null) {
        food.isFavorite = !food.isFavorite;
        await _isar.foods.put(food);
      }
    });
  }
}
