import 'package:flutter/material.dart';
import '../../../core/theme/synthwave_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
          Center(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.bolt,
                    color: SynthwaveColors.neonCyan,
                    size: 100,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'OPEN FIT',
                    style: SynthwaveTextStyles.displayLarge(context),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Loading your data...',
                    style: SynthwaveTextStyles.bodySmall(context),
                  ),
                  const SizedBox(height: 32),
                  const SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      backgroundColor: SynthwaveColors.surface,
                      valueColor: AlwaysStoppedAnimation<Color>(SynthwaveColors.neonCyan),
                    ),
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
