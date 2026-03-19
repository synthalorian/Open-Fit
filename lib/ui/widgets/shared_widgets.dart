import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/synthwave_theme.dart';

/// Reusable neon card with gradient border
class NeonCard extends StatelessWidget {
  final Widget child;
  final Color startColor;
  final Color endColor;
  final VoidCallback? onTap;

  const NeonCard({
    super.key,
    required this.child,
    this.startColor = SynthwaveColors.neonPink,
    this.endColor = SynthwaveColors.neonPurple,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [startColor.withOpacity(0.2), endColor.withOpacity(0.2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: SynthwaveColors.gridLine),
          ),
          child: child,
        ),
      ),
    );
  }
}

/// Reusable metric display with icon
class MetricDisplay extends StatelessWidget {
  final String label;
  final String value;
  final String? unit;
  final IconData icon;
  final Color color;

  const MetricDisplay({
    super.key,
    required this.label,
    required this.value,
    this.unit,
    this.icon = Icons.check_circle,
    this.color = SynthwaveColors.neonCyan,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: SynthwaveTextStyles.labelMedium(context).copyWith(
                  color: color,
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    value,
                    style: SynthwaveTextStyles.displayMedium(context).copyWith(
                      fontSize: 24,
                    ),
                  ),
                  if (unit != null) ...[
                    const SizedBox(width: 4),
                    Text(
                      unit,
                      style: SynthwaveTextStyles.bodySmall(context),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Date selector widget
class DateSelector extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;
  final bool showArrows;

  const DateSelector({
    super.key,
    required this.selectedDate,
    required this.onDateChanged,
    this.showArrows = true,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isToday = selectedDate.year == now.year &&
        selectedDate.month == now.month &&
        selectedDate.day == now.day;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: SynthwaveColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: SynthwaveColors.gridLine),
      ),
      child: Row(
        children: [
          if (showArrows)
            IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () => onDateChanged(
                selectedDate.subtract(const Duration(days: 1)),
              ),
            ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  onDateChanged(date);
                }
              },
              child: Text(
                isToday ? 'Today' : '${selectedDate.month}/${selectedDate.day}/${selectedDate.year}',
                textAlign: center,
                style: SynthwaveTextStyles.bodyLarge(context),
              ),
            ),
          ),
          if (showArrows)
            IconButton(
              icon: const Icon(Icons.chevron_right),
              onPressed: selectedDate.isBefore(now.subtract(const Duration(days: 1)))
                  ? () => onDateChanged(
                      selectedDate.add(const Duration(days: 1)),
                    )
                  : null,
            ),
        ],
      ),
    );
  }
}
