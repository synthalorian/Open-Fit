import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/synthwave_theme.dart';
import '../../../ui/widgets/shared_widgets.dart';

class MetricsHomeScreen extends ConsumerWidget {
  const MetricsHomeScreen({super.key});

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
                'METRICS',
                style: SynthwaveTextStyles.displayLarge(context),
              ),
              const SizedBox(height: 16),
              
              _buildWeightTrend(context),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'PROGRESS PHOTOS', action: 'GALLERY'),
              const SizedBox(height: 12),
              _buildPhotoStrip(context),
              
              const SizedBox(height: 24),
              
              _buildSectionHeader(context, 'BODY MEASUREMENTS', action: 'LOG'),
              const SizedBox(height: 12),
              _buildMeasurementsGrid(context),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.scale),
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

  Widget _buildWeightTrend(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CURRENT WEIGHT', style: SynthwaveTextStyles.labelMedium(context)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('84.2', style: SynthwaveTextStyles.displayMedium(context).copyWith(fontSize: 40, color: SynthwaveColors.neonCyan)),
                      const SizedBox(width: 4),
                      Text('kg', style: SynthwaveTextStyles.bodySmall(context)),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('GOAL: 80.0 kg', style: SynthwaveTextStyles.bodySmall(context)),
                  Text('-0.5 kg this week', style: const TextStyle(color: SynthwaveColors.neonGreen, fontSize: 12)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: SynthwaveColors.background,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: SynthwaveColors.gridLine),
            ),
            child: const Center(
              child: Icon(Icons.show_chart, color: SynthwaveColors.neonCyan, size: 48),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoStrip(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildPhotoPlaceholder(context, 'Today'),
          const SizedBox(width: 12),
          _buildPhotoPlaceholder(context, '1 Week Ago'),
          const SizedBox(width: 12),
          _buildPhotoPlaceholder(context, '1 Month Ago'),
        ],
      ),
    );
  }

  Widget _buildPhotoPlaceholder(BuildContext context, String label) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: SynthwaveColors.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: SynthwaveColors.gridLine),
          ),
          child: const Icon(Icons.camera_alt, color: SynthwaveColors.chrome, size: 24),
        ),
        const SizedBox(height: 8),
        Text(label, style: SynthwaveTextStyles.bodySmall(context).copyWith(fontSize: 10)),
      ],
    );
  }

  Widget _buildMeasurementsGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.2,
      children: [
        _buildMeasurementCard(context, 'CHEST', '104 cm'),
        _buildMeasurementCard(context, 'WAIST', '88 cm'),
        _buildMeasurementCard(context, 'BICEPS', '38 cm'),
        _buildMeasurementCard(context, 'THIGHS', '62 cm'),
        _buildMeasurementCard(context, 'NECK', '40 cm'),
        _buildMeasurementCard(context, 'BODY FAT', '18.5%'),
      ],
    );
  }

  Widget _buildMeasurementCard(BuildContext context, String label, String value) {
    return Container(
      decoration: BoxDecoration(
        color: SynthwaveColors.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: SynthwaveColors.gridLine),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: SynthwaveTextStyles.labelMedium(context).copyWith(fontSize: 8)),
          const SizedBox(height: 4),
          Text(value, style: SynthwaveTextStyles.bodyMedium(context).copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
