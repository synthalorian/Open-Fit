import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/synthwave_theme.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFILE'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileHeader(context),
            const SizedBox(height: 32),
            _buildSection(context, 'PERSONAL INFO', [
              _buildInfoTile(context, 'Name', 'User', Icons.person),
              _buildInfoTile(context, 'Age', '30 years', Icons.cake),
              _buildInfoTile(context, 'Height', '180 cm', Icons.height),
            ]),
            const SizedBox(height: 24),
            _buildSection(context, 'GOALS', [
              _buildInfoTile(context, 'Target Weight', '80 kg', Icons.flag),
              _buildInfoTile(context, 'Weekly Workouts', '4', Icons.fitness_center),
              _buildInfoTile(context, 'Calorie Goal', '2,200 kcal', Icons.local_fire_department),
            ]),
            const SizedBox(height: 24),
            _buildSection(context, 'PREFERENCES', [
              _buildInfoTile(context, 'Units', 'Metric', Icons.straighten),
              _buildInfoTile(context, 'Theme', 'Neon Night', Icons.palette),
              _buildInfoTile(context, 'Notifications', 'Enabled', Icons.notifications),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: SynthwaveColors.neonCyan, width: 3),
            ),
            child: const Icon(Icons.person, size: 50, color: SynthwaveColors.neonCyan),
          ),
          const SizedBox(height: 16),
          Text('OPEN FIT USER', style: SynthwaveTextStyles.displaySmall(context)),
          const SizedBox(height: 4),
          Text('Member since 2024', style: SynthwaveTextStyles.bodySmall(context)),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: SynthwaveTextStyles.labelLarge(context)),
        const SizedBox(height: 12),
        ...children,
      ],
    );
  }

  Widget _buildInfoTile(BuildContext context, String label, String value, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(icon, color: SynthwaveColors.neonCyan),
        title: Text(label, style: SynthwaveTextStyles.bodyMedium(context)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(value, style: SynthwaveTextStyles.bodySmall(context)),
            const SizedBox(width: 8),
            const Icon(Icons.chevron_right, color: SynthwaveColors.chrome),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
