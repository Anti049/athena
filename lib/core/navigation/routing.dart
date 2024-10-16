import 'package:athena/presentation/home/home.dart';
import 'package:athena/presentation/more/settings/settings.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // Home
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    // Settings
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
