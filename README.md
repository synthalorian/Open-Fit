# Open Fit - v2.0 Architecture

## Overview

Open Fit v2.0 is built on a complete overhaul with:

### Architecture Principles
- **Domain-Driven Design**: Clean separation between domain, data, and presentation layers
- **Repository Pattern**: Repository interfaces with proper Isar implementations
- **Use Cases**: Business logic encapsulated in domain layer
- **State Management**: Riverpod with code generation for type-safe, reactive state
- **Navigation**: go_router with StatefulShellRoute for proper tab state
- **Database**: Isar for offline-first local storage
- **Theme**: Synthwave aesthetic preserved

### Project Structure

```
lib/
├── core/
│   ├── theme/           # SynthwaveTheme (colors, text styles)
│   ├── utils/            # Extensions, helpers
│   ├── router/           # go_router configuration
│   └── services/          # Service locator
│
├── data/
│   ├── models/             # Isar models (kept from old project)
│   ├── repositories/     # Repository implementations
│   └── services/           # DatabaseService
│
├── domain/
│   ├── entities/         # Business entities
│   ├── repositories/     # Repository interfaces
│   └── usecases/          # Business logic (workouts, nutrition, glucose)
│
├── features/
│   ├── onboarding/      # First-time user flow
│   ├── dashboard/         # Home screen
│   ├── workouts/          # Workout tracking
│   ├── nutrition/        # Food/meal tracking
│   ├── health/            # Glucose tracking
│   ├── metrics/          # Body measurements
│   ├── settings/          # App preferences
│   └── profile/           # User profile
│
└── ui/
    └── widgets/            # Shared widgets (NeonCard, StatCard, etc.)

### Key Technologies
- **Flutter 3.4+** - Cross-platform UI
- **Riverpod 2.5+** - State management with code generation
- **Isar 3.1+** - Local database (offline-first)
- **go_router 14.1+** - Declarative navigation
- **fl_chart 0.67+** - Charts
- **freezed/json_serializable** - Immutable models

### Features Implemented
- [x] Workout logging with active workout screen
- [x] Exercise library (20+ default exercises)
- [x] Custom exercise creation
- [x] Workout history and stats
- [x] Nutrition tracking with macros
- [x] Meal logging by type
- [x] Food database with 25+ default foods
- [x] Barcode scanning
- [x] Water intake
- [x] Glucose tracking with context-aware logging
- [x] Daily summaries
- [x] A1C estimation
- [x] Time-in-range calculations
- [x] Body metrics with weight tracking
- [x] Body measurements
- [x] BMI calculation
- [x] Progress photos (placeholder)
- [x] Synthwave theme throughout

### Next Steps
1. Run `flutter pub get`
2. Run code generation: `dart run build_runner build`
3. Run on device/simulator
4. Connect providers to real data
5. Test all features
6. Polish UI/UX

### Future Features
- Cloud sync (optional)
- Social features
- AI recommendations
- Apple Health/Google Fit integration
- Advanced analytics

---

Built with ❤️ by the Open Fit team
