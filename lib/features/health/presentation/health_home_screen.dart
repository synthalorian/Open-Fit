import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/synthwave_theme.dart';
import '../../../ui/widgets/shared_widgets.dart';

class HealthHomeScreen extends ConsumerWidget {
  const HealthHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HEALTH',
                style: SynthwaveTextStyles.displayLarge(context),
              ),
              const SizedBox(height: 16),
              
              _buildGlucoseSummary(context),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'GLUCOSE LOGS', action: 'EXPORT'),
              const SizedBox(height: 12),
              _buildHealthLogs(context),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'MEDICATION'),
              const SizedBox(height: 12),
              _buildMedicationCard(context, 'Metformin', '500mg • Once daily', 'Taken 8:00 AM'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/health/glucose-entry'),
        child: const Icon(Icons.bloodtype),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, {String? action}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: SynthwaveTextStyles.labelLarge(context),
        ),
        if (action != null)
          TextButton(
            onPressed: () {},
            child: Text(action, style: const TextStyle(fontSize: 12)),
          ),
      ],
    );
  }

  Widget _buildGlucoseSummary(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            SynthwaveColors.neonPurple.withOpacity(0.2),
            SynthwaveColors.neonBlue.withOpacity(0.2),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: SynthwaveColors.gridLine),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('AVERAGE GLUCOSE', style: SynthwaveTextStyles.labelMedium(context)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('104', style: SynthwaveTextStyles.displayMedium(context).copyWith(fontSize: 48, color: SynthwaveColors.neonGreen)),
                      const SizedBox(width: 4),
                      Text('mg/dL', style: SynthwaveTextStyles.bodySmall(context)),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: SynthwaveColors.surface.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.show_chart, color: SynthwaveColors.neonCyan, size: 32),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHealthStat(context, 'EST. A1C', '5.2%', SynthwaveColors.neonGreen),
              _buildHealthStat(context, 'IN RANGE', '92%', SynthwaveColors.neonCyan),
              _buildHealthStat(context, 'READINGS', '4', SynthwaveColors.neonYellow),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHealthStat(BuildContext context, String label, String value, Color color) {
    return Column(
      children: [
        Text(label, style: SynthwaveTextStyles.labelMedium(context).copyWith(fontSize: 10)),
        Text(value, style: SynthwaveTextStyles.bodyLarge(context).copyWith(color: color, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildHealthLogs(BuildContext context) {
    return Column(
      children: [
        _buildLogEntry(context, '112 mg/dL', 'Post-Meal', '1:30 PM', SynthwaveColors.neonYellow),
        const SizedBox(height: 8),
        _buildLogEntry(context, '94 mg/dL', 'Fasting', '7:45 AM', SynthwaveColors.neonGreen),
      ],
    );
  }

  Widget _buildLogEntry(BuildContext context, String value, String tag, String time, Color color) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 4,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        title: Text(value, style: SynthwaveTextStyles.bodyLarge(context)),
        subtitle: Text(tag, style: SynthwaveTextStyles.bodySmall(context)),
        trailing: Text(time, style: SynthwaveTextStyles.bodySmall(context)),
      ),
    );
  }

  Widget _buildMedicationCard(BuildContext context, String name, String dose, String status) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: SynthwaveColors.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: SynthwaveColors.neonOrange.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.medication, color: SynthwaveColors.neonOrange),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: SynthwaveTextStyles.bodyLarge(context)),
                Text(dose, style: SynthwaveTextStyles.bodySmall(context)),
              ],
            ),
          ),
          Text(status, style: SynthwaveTextStyles.labelMedium(context).copyWith(color: SynthwaveColors.neonGreen)),
        ],
      ),
    );
  }
}
