class Validators {
  static String? required(String? campo) {
    if (campo == null || campo.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }
}
