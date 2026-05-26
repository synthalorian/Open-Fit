import 'package:flutter/material.dart';
import '../../../core/theme/synthwave_theme.dart';
import '../../../ui/widgets/shared_widgets.dart';

class GlucoseEntryScreen extends StatefulWidget {
  const GlucoseEntryScreen({super.key});

  @override
  State<GlucoseEntryScreen> createState() => _GlucoseEntryScreenState();
}

class _GlucoseEntryScreenState extends State<GlucoseEntryScreen> {
  String _selectedContext = 'Fasting';
  final _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SynthwaveColors.background,
      appBar: AppBar(
        title: const Text('LOG GLUCOSE'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Giant Value Input
            Center(
              child: Column(
                children: [
                  Text('BLOOD SUGAR', style: SynthwaveTextStyles.labelMedium(context)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      SizedBox(
                        width: 120,
                        child: TextField(
                          controller: _valueController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: SynthwaveTextStyles.displayLarge(context).copyWith(fontSize: 64, color: SynthwaveColors.neonGreen),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: '---',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text('mg/dL', style: SynthwaveTextStyles.bodyLarge(context)),
                    ],
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 48),
            
            Text('CONTEXT', style: SynthwaveTextStyles.labelLarge(context)),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _contextChip('Fasting', Icons.wb_sunny),
                _contextChip('Pre-Meal', Icons.restaurant_menu),
                _contextChip('Post-Meal', Icons.fastfood),
                _contextChip('Bedtime', Icons.bedtime),
                _contextChip('General', Icons.monitor_heart),
              ],
            ),
            
            const SizedBox(height: 32),
            
            Text('NOTES', style: SynthwaveTextStyles.labelLarge(context)),
            const SizedBox(height: 12),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'How are you feeling? Any high-carb meals?',
              ),
            ),
            
            const SizedBox(height: 48),
            
            NeonButton(
              label: 'SAVE READING',
              color: SynthwaveColors.neonPurple,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contextChip(String label, IconData icon) {
    final isSelected = _selectedContext == label;
    return InkWell(
      onTap: () => setState(() => _selectedContext = label),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? SynthwaveColors.neonPurple.withValues(alpha: 0.2) : SynthwaveColors.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? SynthwaveColors.neonPurple : SynthwaveColors.gridLine,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18, color: isSelected ? SynthwaveColors.neonPurple : SynthwaveColors.chrome),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? SynthwaveColors.neonPurple : SynthwaveColors.chrome,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
