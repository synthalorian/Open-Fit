import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/synthwave_theme.dart';
import '../../../ui/widgets/shared_widgets.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'OPEN FIT',
                    style: SynthwaveTextStyles.displayLarge(context),
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings, color: SynthwaveColors.chrome),
                    onPressed: () => context.push('/settings'),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Your health, your data, your way.',
                style: SynthwaveTextStyles.bodyMedium(context).copyWith(
                  color: SynthwaveColors.neonCyan.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 32),
              
              // Daily Quick Action
              _buildQuickAction(context),
              
              const SizedBox(height: 32),
              
              _buildMetricGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickAction(BuildContext context) {
    return NeonGlow(
      glowColor: SynthwaveColors.neonPink,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              SynthwaveColors.neonPink.withOpacity(0.8),
              SynthwaveColors.neonPurple.withOpacity(0.8),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NEXT UP', style: SynthwaveTextStyles.labelMedium(context).copyWith(color: Colors.white)),
            const SizedBox(height: 8),
            Text('PUSH DAY', style: SynthwaveTextStyles.displaySmall(context).copyWith(color: Colors.white)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.push('/workouts/active'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: SynthwaveColors.neonPink,
              ),
              child: const Text('START WORKOUT'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.1,
      children: [
        StatCard(
          title: 'CALORIES',
          value: '1,847',
          subtitle: 'kcal',
          icon: Icons.local_fire_department,
          color: SynthwaveColors.neonOrange,
          progress: 0.8,
          onTap: () => context.go('/nutrition'),
        ),
        StatCard(
          title: 'PROTEIN',
          value: '142',
          subtitle: 'grams',
          icon: Icons.set_meal,
          color: SynthwaveColors.neonCyan,
          progress: 0.7,
          onTap: () => context.go('/nutrition'),
        ),
        StatCard(
          title: 'GLUCOSE',
          value: '98',
          subtitle: 'mg/dL',
          icon: Icons.bloodtype,
          color: SynthwaveColors.neonPurple,
          onTap: () => context.go('/health'),
        ),
        StatCard(
          title: 'WEIGHT',
          value: '84.2',
          subtitle: 'kg',
          icon: Icons.monitor_weight,
          color: SynthwaveColors.neonBlue,
          onTap: () => context.go('/metrics'),
        ),
      ],
    );
  }
}
