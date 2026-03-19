import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/synthwave_theme.dart';
import '../../../ui/widgets/shared_widgets.dart';

class FoodSearchScreen extends ConsumerStatefulWidget {
  const FoodSearchScreen({super.key});

  @override
  ConsumerState<FoodSearchScreen> createState() => _FoodSearchScreenState();
}

class _FoodSearchScreenState extends ConsumerState<FoodSearchScreen> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SynthwaveColors.background,
      appBar: AppBar(
        title: const Text('ADD FOOD'),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {
              // Open Barcode Scanner
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search foods...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _searchController.clear(),
                ),
              ),
            ),
          ),
          
          // Categories
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildCategoryChip('RECENT', true),
                _buildCategoryChip('FAVORITES', false),
                _buildCategoryChip('MY FOODS', false),
                _buildCategoryChip('RECIPES', false),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Food List
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => _buildFoodTile(context, index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('CREATE FOOD'),
        icon: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label, style: TextStyle(fontSize: 10, color: isSelected ? Colors.black : Colors.white)),
        selected: isSelected,
        onSelected: (val) {},
        selectedColor: SynthwaveColors.neonCyan,
        backgroundColor: SynthwaveColors.surface,
      ),
    );
  }

  Widget _buildFoodTile(BuildContext context, int index) {
    final foodNames = ['Chicken Breast', 'White Rice', 'Egg (Large)', 'Greek Yogurt', 'Avocado'];
    final brands = ['Generic', 'Generic', 'Generic', 'Chobani', 'Generic'];
    final macros = ['31P | 0C | 4F', '3P | 28C | 0F', '6P | 1C | 5F', '17P | 6C | 0F', '2P | 9C | 15F'];

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(foodNames[index], style: SynthwaveTextStyles.bodyMedium(context)),
        subtitle: Text('${brands[index]} • ${macros[index]}', style: SynthwaveTextStyles.bodySmall(context)),
        trailing: const Icon(Icons.add_circle_outline, color: SynthwaveColors.neonPink),
        onTap: () => _showPortionDialog(context, foodNames[index]),
      ),
    );
  }

  void _showPortionDialog(BuildContext context, String name) {
    showModalBottomSheet(
      context: context,
      backgroundColor: SynthwaveColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name.toUpperCase(), style: SynthwaveTextStyles.displaySmall(context)),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Amount'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: 'grams',
                    items: const [
                      DropdownMenuItem(value: 'grams', child: Text('grams')),
                      DropdownMenuItem(value: 'oz', child: Text('oz')),
                      DropdownMenuItem(value: 'serving', child: Text('serving')),
                    ],
                    onChanged: (val) {},
                    decoration: const InputDecoration(labelText: 'Unit'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            NeonButton(
              label: 'ADD TO MEAL',
              color: SynthwaveColors.neonCyan,
              onPressed: () => Navigator.pop(context),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
