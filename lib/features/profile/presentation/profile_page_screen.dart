import 'package:core/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../auth/domain/user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil", style: text.headlineMedium),
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            /// Avatar
            CircleAvatar(
              radius: 60,
              backgroundColor: colors.primaryContainer,

              child: Icon(
                Icons.person,
                size: 60,
                color: colors.onPrimaryContainer,
              ),
            ),

            const SizedBox(height: 30),

            /// Nombre
            Text(user.nombre, style: text.headlineLarge),

            const SizedBox(height: 10),

            /// Correo
            Text(user.correo, style: text.bodyLarge),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              child: AppButton(
                texto: 'Editar Perfil',
                color: colors.primary,
                icono: Icons.edit,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
