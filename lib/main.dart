import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_themes.dart';
import 'data/services/database_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize database
  await DatabaseService.instance;
  
  runApp(
    const ProviderScope(
      child: OpenFitApp(),
    ),
  );
}

class OpenFitApp extends ConsumerWidget {
  const OpenFitApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp.router(
      title: 'Open Fit',
      debugShowCheckedModeBanner: false,
      theme: theme.themeData,
      routerConfig: routerConfig,
      builder: (context, child) {
        // Add global error handling
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
