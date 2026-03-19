/// Core utility extensions
extension StringExtensions on String {
  String capitalize() {
    if (isEmpty) return this;
    return split(' ').map((word) => 
      word.isEmpty ? word : '${word[0].toUpperCase()}${word.substring(1)}'
    ).join(' ');
  }
  
  String capitalizeFirst() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

extension DateTimeExtensions on DateTime {
  String formatDate() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final date = DateTime(year, month, day);
    
    if (date == today) return 'Today';
    if (date == today.subtract(const Duration(days: 1))) return 'Yesterday';
    if (date == today.add(const Duration(days: 1))) return 'Tomorrow';
    
    return '$month/$day';
  }
  
  String formatTime() {
    final hour = this.hour > 12 ? this.hour - 12 : this.hour;
    final minute = this.minute.toString().padLeft(2, '0');
    final period = this.hour >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  }
  
  String formatDateLong() {
    final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return '${months[month - 1]} $day, $year';
  }
}

extension DoubleExtensions on double {
  String toOneDecimal() => toStringAsFixed(1);
  String toNoDecimal() => toStringAsFixed(0);
}

extension IntExtensions on int {
  String toOrdinal() {
    if (this >= 11 && this <= 13) return '${this}th';
    switch (this % 10) {
      case 1: return '${this}st';
      case 2: return '${this}nd';
      case 3: return '${this}rd';
      default: return '${this}th';
    }
  }
}
