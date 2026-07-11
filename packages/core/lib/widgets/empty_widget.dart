import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String descripcion;

  const EmptyWidget({
    super.key,
    required this.icono,
    required this.titulo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icono, size: 80, color: theme.primary),
            const SizedBox(height: 20),
            Text(titulo, style: text.titleLarge),
            const SizedBox(height: 10),
            Text(descripcion, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
