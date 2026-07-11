import 'package:flutter/material.dart';
import 'package:core/widgets/app_button.dart';
import 'package:petcare/app/app_routes.dart';
import 'package:petcare/features/auth/domain/user.dart';

class DashboardPageScreen extends StatelessWidget {
  final User user;
  final int cantidadMascotas;

  const DashboardPageScreen({
    super.key,
    required this.user,
    required this.cantidadMascotas,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style: text.headlineMedium),
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: colors.onPrimary),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.profile, arguments: user);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, ${user.nombre}', style: text.headlineLarge),
            const SizedBox(height: 20),
            Text(
              'Cantidad de mascotas: $cantidadMascotas',
              style: text.bodyMedium,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                texto: 'Ver Mascotas',
                color: colors.primary,
                icono: Icons.pets,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.pets);
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                texto: 'Cerrar Sesión',
                color: colors.primary,
                icono: Icons.logout,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.login);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
