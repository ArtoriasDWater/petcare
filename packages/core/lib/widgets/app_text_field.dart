import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final String label;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final IconData icono;

  const AppTextField({
    super.key,
    required this.hint,
    required this.label,
    required this.validator,
    required this.controller,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        prefixIcon: Icon(icono),
        border: OutlineInputBorder(),
      ),
    );
  }
}
