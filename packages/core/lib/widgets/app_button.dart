import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String texto;
  final Color color;
  final IconData icono;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.texto,
    required this.color,
    required this.icono,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity / 0.5,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(icono), const SizedBox(width: 8), Text(texto)],
        ),
      ),
    );
  }
}
