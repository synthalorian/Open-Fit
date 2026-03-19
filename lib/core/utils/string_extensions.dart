/// Core utility extensions
extension StringExtensions on String {
  String capitalize() {
    if (isEmpty) return this;
    return split(' ').map((word) => word[0].toUpperCase() + word[1].toUpperCase()).join();
  return this;
}
