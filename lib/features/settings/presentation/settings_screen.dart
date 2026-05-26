import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/theme/synthwave_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SETTINGS'),
      ),
      body: ListView(
        children: [
          _buildSection(context, 'SUPPORT THE PROJECT', [
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: InkWell(
                onTap: () => _launchUrl('https://www.buymeacoffee.com/synthalorian'),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFFDD00).withValues(alpha: 0.2),
                        SynthwaveColors.neonOrange.withValues(alpha: 0.2),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFFFDD00).withValues(alpha: 0.5)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.coffee, color: Color(0xFFFFDD00), size: 28),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Buy Me a Coffee',
                              style: SynthwaveTextStyles.bodyLarge(context).copyWith(
                                color: const Color(0xFFFFDD00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Support the development of Open Fit',
                              style: SynthwaveTextStyles.bodySmall(context),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.open_in_new, color: Colors.grey, size: 18),
                    ],
                  ),
                ),
              ),
            ),
          ]),
          _buildSection(context, 'PREFERENCES', [
            _buildSettingTile(context, 'Units', 'Metric (kg, cm)', Icons.straighten),
            _buildSettingTile(context, 'Theme', 'Neon Night (Dark)', Icons.palette),
          ]),
          _buildSection(context, 'DATA', [
            _buildSettingTile(context, 'Export Data', 'CSV / JSON', Icons.download),
            _buildSettingTile(context, 'Cloud Sync', 'Not connected', Icons.cloud_off),
          ]),
          _buildSection(context, 'ABOUT', [
            _buildSettingTile(
              context, 
              'Open Source', 
              'View on GitHub', 
              Icons.code,
              onTap: () => _launchUrl('https://github.com/synthalorian/Open-Fit'),
            ),
            _buildSettingTile(context, 'Version', '1.0.0', Icons.info_outline),
            _buildSettingTile(context, 'Licenses', 'MIT License', Icons.gavel),
          ]),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Text(
            title,
            style: SynthwaveTextStyles.labelLarge(context),
          ),
        ),
        ...children,
      ],
    );
  }

  Widget _buildSettingTile(
    BuildContext context, 
    String title, 
    String subtitle, 
    IconData icon, 
    {VoidCallback? onTap}
  ) {
    return ListTile(
      leading: Icon(icon, color: SynthwaveColors.neonCyan),
      title: Text(title, style: SynthwaveTextStyles.bodyMedium(context)),
      subtitle: Text(subtitle, style: SynthwaveTextStyles.bodySmall(context)),
      trailing: const Icon(Icons.chevron_right, color: SynthwaveColors.chrome),
      onTap: onTap ?? () {},
    );
  }
}
