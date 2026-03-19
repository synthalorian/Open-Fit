import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/synthwave_theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: SynthwaveGridPainter(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.bolt, color: SynthwaveColors.neonCyan, size: 80),
                  const SizedBox(height: 32),
                  Text(
                    'WELCOME TO THE GRID',
                    style: SynthwaveTextStyles.displayLarge(context),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Your journey to peak performance starts here. Track everything, own your data.',
                    style: SynthwaveTextStyles.bodyLarge(context),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48),
                  ElevatedButton(
                    onPressed: () => context.go('/'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 56),
                    ),
                    child: const Text('INITIALIZE SYSTEM'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
