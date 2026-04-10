import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/synthwave_theme.dart';

class WorkoutsHomeScreen extends ConsumerWidget {
  const WorkoutsHomeScreen({super.key});

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
                'WORKOUTS',
                style: SynthwaveTextStyles.displayLarge(context),
              ),
              const SizedBox(height: 16),
              
              _buildSectionHeader(context, 'QUICK START'),
              const SizedBox(height: 12),
              InkWell(
                onTap: () => context.push('/workouts/active'),
                child: _buildQuickStartCard(
                  context,
                  title: 'Empty Workout',
                  subtitle: 'Log a workout as you go',
                  icon: Icons.add,
                  color: SynthwaveColors.neonPink,
                ),
              ),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'MY ROUTINES', action: 'CREATE'),
              const SizedBox(height: 12),
              _buildRoutineList(context),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'RECENT HISTORY', action: 'VIEW ALL'),
              const SizedBox(height: 12),
              _buildHistoryCard(
                context,
                title: 'Push Day',
                date: 'Today, 2:30 PM',
                volume: '12,450 kg',
                duration: '45m',
                color: SynthwaveColors.neonCyan,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/workouts/active'),
        child: const Icon(Icons.play_arrow),
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

  Widget _buildQuickStartCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: SynthwaveColors.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: SynthwaveColors.gridLine),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: SynthwaveTextStyles.bodyLarge(context)),
              Text(subtitle, style: SynthwaveTextStyles.bodySmall(context)),
            ],
          ),
          const Spacer(),
          const Icon(Icons.chevron_right, color: SynthwaveColors.chrome),
        ],
      ),
    );
  }

  Widget _buildRoutineList(BuildContext context) {
    return Column(
      children: [
        _buildRoutineItem(context, 'Upper Body Power', '8 Exercises', SynthwaveColors.neonBlue),
        const SizedBox(height: 8),
        _buildRoutineItem(context, 'Lower Body Hypertrophy', '6 Exercises', SynthwaveColors.neonPurple),
      ],
    );
  }

  Widget _buildRoutineItem(BuildContext context, String title, String subtitle, Color color) {
    return Card(
      child: ListTile(
        onTap: () => context.push('/workouts/active'),
        leading: Icon(Icons.assignment, color: color),
        title: Text(title, style: SynthwaveTextStyles.bodyMedium(context)),
        subtitle: Text(subtitle, style: SynthwaveTextStyles.bodySmall(context)),
        trailing: const Icon(Icons.more_vert),
      ),
    );
  }

  Widget _buildHistoryCard(
    BuildContext context, {
    required String title,
    required String date,
    required String volume,
    required String duration,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: SynthwaveColors.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: SynthwaveTextStyles.bodyLarge(context).copyWith(color: color)),
              Text(date, style: SynthwaveTextStyles.bodySmall(context)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildHistoryStat(context, 'VOLUME', volume),
              _buildHistoryStat(context, 'DURATION', duration),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryStat(BuildContext context, String label, String value) {
    return Column(
      children: [
        Text(label, style: SynthwaveTextStyles.labelMedium(context).copyWith(fontSize: 10)),
        Text(value, style: SynthwaveTextStyles.bodyMedium(context)),
      ],
    );
  }
}
