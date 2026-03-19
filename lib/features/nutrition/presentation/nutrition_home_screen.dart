import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/synthwave_theme.dart';
import '../../../ui/widgets/shared_widgets.dart';

class NutritionHomeScreen extends ConsumerWidget {
  const NutritionHomeScreen({super.key});

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
                'NUTRITION',
                style: SynthwaveTextStyles.displayLarge(context),
              ),
              const SizedBox(height: 16),
              
              _buildMacroOverview(context),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'MEALS LOG', action: 'QUICK SCAN'),
              const SizedBox(height: 12),
              _buildMealEntries(context),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'HYDRATION'),
              const SizedBox(height: 12),
              _buildWaterTracker(context),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/nutrition/search'),
        child: const Icon(Icons.add),
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
            onPressed: () => context.push('/nutrition/search'),
            child: Text(action, style: const TextStyle(fontSize: 12)),
          ),
      ],
    );
  }

  Widget _buildMacroOverview(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: SynthwaveColors.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: SynthwaveColors.gridLine),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProgressRing(progress: 0.6, label: 'CARBS', value: '152g', color: SynthwaveColors.neonYellow),
              ProgressRing(progress: 0.8, label: 'PROTEIN', value: '142g', color: SynthwaveColors.neonCyan),
              ProgressRing(progress: 0.4, label: 'FAT', value: '62g', color: SynthwaveColors.neonPink),
            ],
          ),
          const SizedBox(height: 24),
          _buildProgressBar(context, 'CALORIES', '1,847 / 2,200 kcal', 0.8),
        ],
      ),
    );
  }

  Widget _buildProgressBar(BuildContext context, String label, String value, double progress) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: SynthwaveTextStyles.labelMedium(context)),
            Text(value, style: SynthwaveTextStyles.bodySmall(context)),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: SynthwaveColors.gridLine,
            valueColor: const AlwaysStoppedAnimation<Color>(SynthwaveColors.neonCyan),
            minHeight: 8,
          ),
        ),
      ],
    );
  }

  Widget _buildMealEntries(BuildContext context) {
    return Column(
      children: [
        _buildMealItem(context, 'Breakfast', 'Oats, Protein Powder, Banana', '450 kcal', Icons.breakfast_dining),
        const SizedBox(height: 8),
        _buildMealItem(context, 'Lunch', 'Chicken Breast, Rice, Broccoli', '650 kcal', Icons.lunch_dining),
      ],
    );
  }

  Widget _buildMealItem(BuildContext context, String title, String subtitle, String calories, IconData icon) {
    return Card(
      child: ListTile(
        onTap: () => context.push('/nutrition/search'),
        leading: Icon(icon, color: SynthwaveColors.neonCyan),
        title: Text(title, style: SynthwaveTextStyles.bodyMedium(context)),
        subtitle: Text(subtitle, style: SynthwaveTextStyles.bodySmall(context), overflow: TextOverflow.ellipsis),
        trailing: Text(calories, style: SynthwaveTextStyles.bodyMedium(context)),
      ),
    );
  }

  Widget _buildWaterTracker(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: SynthwaveColors.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: SynthwaveColors.neonBlue.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.local_drink, color: SynthwaveColors.neonBlue),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1,800 / 2,500 ml', style: SynthwaveTextStyles.bodyLarge(context)),
                  Text('Daily Goal', style: SynthwaveTextStyles.bodySmall(context)),
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.add_circle, color: SynthwaveColors.neonBlue, size: 32),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
