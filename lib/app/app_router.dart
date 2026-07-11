import 'package:flutter/material.dart';
import '../app/app_routes.dart';
import '../features/auth/domain/user.dart';
import '../features/auth/presentation/login_page_screen.dart';
import '../features/dashboard/presentation/dashboard_page_screen.dart';
import '../features/pets/presentation/pets_page_screen.dart';
import '../features/profile/presentation/profile_page_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPageScreen());
      case AppRoutes.dashboard:
        final user = settings.arguments as User;
        return MaterialPageRoute(
          builder: (_) => DashboardPageScreen(user: user, cantidadMascotas: 4),
        );
      case AppRoutes.pets:
        return MaterialPageRoute(builder: (_) => PetsPageScreen());
      case AppRoutes.profile:
        final user = settings.arguments as User;
        return MaterialPageRoute(builder: (_) => ProfilePage(user: user));
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Ruta no encontrada'))),
        );
    }
  }
}
