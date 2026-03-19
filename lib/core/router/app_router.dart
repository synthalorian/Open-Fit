import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/dashboard_screen.dart';
import '../../features/workouts/presentation/workouts_home_screen.dart';
import '../../features/workouts/presentation/active_workout_screen.dart';
import '../../features/nutrition/presentation/nutrition_home_screen.dart';
import '../../features/nutrition/presentation/food_search_screen.dart';
import '../../features/health/presentation/health_home_screen.dart';
import '../../features/health/presentation/glucose_entry_screen.dart';
import '../../features/metrics/presentation/metrics_home_screen.dart';
import '../../features/onboarding/presentation/onboarding_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../ui/widgets/main_shell.dart';
import '../../ui/screens/splash_screen.dart';

final routerConfig = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/workouts',
              builder: (context, state) => const WorkoutsHomeScreen(),
              routes: [
                GoRoute(
                  path: 'active',
                  builder: (context, state) => const ActiveWorkoutScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/nutrition',
              builder: (context, state) => const NutritionHomeScreen(),
              routes: [
                GoRoute(
                  path: 'search',
                  builder: (context, state) => const FoodSearchScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/health',
              builder: (context, state) => const HealthHomeScreen(),
              routes: [
                GoRoute(
                  path: 'glucose-entry',
                  builder: (context, state) => const GlucoseEntryScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/metrics',
              builder: (context, state) => const MetricsHomeScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Page not found: ${state.uri}'),
    ),
  ),
  redirect: (context, state) {
    // Check if first launch - redirect to onboarding
    // For now, just go to home
    if (state.uri.toString() == '/splash') {
      return '/home';
    }
    return null;
  },
);
