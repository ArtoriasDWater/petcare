import '../domain/user.dart';
import '../domain/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<User> login(String correo, String contrasena) async {
    await Future.delayed(const Duration(seconds: 2));

    return User(id: 1, nombre: 'Jhon', correo: correo, contrasena: contrasena);
  }
}
