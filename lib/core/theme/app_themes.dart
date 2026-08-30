import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'blackshield_theme.dart';
import 'synthwave_theme.dart';

/// Available app themes. `blackshield` is the default for fresh installs.
enum AppThemeName {
  blackshield('blackshield', 'Blackshield'),
  synthwave('synthwave', 'Neon Night (Dark)');

  const AppThemeName(this.id, this.label);

  final String id;
  final String label;

  ThemeData get themeData {
    switch (this) {
      case AppThemeName.blackshield:
        return BlackshieldTheme.dark;
      case AppThemeName.synthwave:
        return SynthwaveTheme.dark;
    }
  }

  static AppThemeName fromId(String? id) {
    return AppThemeName.values.firstWhere(
      (t) => t.id == id,
      orElse: () => AppThemeName.blackshield,
    );
  }
}

class ThemeNotifier extends Notifier<AppThemeName> {
  static const _prefsKey = 'app_theme';

  @override
  AppThemeName build() {
    _load();
    return AppThemeName.blackshield;
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(_prefsKey);
    if (saved != null) {
      state = AppThemeName.fromId(saved);
    }
  }

  Future<void> setTheme(AppThemeName theme) async {
    state = theme;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefsKey, theme.id);
  }
}

final themeProvider = NotifierProvider<ThemeNotifier, AppThemeName>(
  ThemeNotifier.new,
);
