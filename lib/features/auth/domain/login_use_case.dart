import 'user.dart';
import '../data/auth_repository_impl.dart';

class LoginUseCase {
  final AuthRepositoryImpl repository;

  LoginUseCase(this.repository);

  Future<User> call(String correo, String constrasena) {
    return repository.login(correo, constrasena);
  }
}
