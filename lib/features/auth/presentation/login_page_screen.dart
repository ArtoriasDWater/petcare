import 'package:core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:core/widgets/app_button.dart';
import 'package:core/widgets/app_text_field.dart';
import 'package:core/validators/validators.dart';
import 'package:petcare/app/app_routes.dart';
import 'package:petcare/features/auth/data/auth_repository_impl.dart';
import 'package:petcare/features/auth/domain/login_use_case.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginPageScreen> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final LoginUseCase _login = LoginUseCase(AuthRepositoryImpl());
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    try {
      setState(() {
        _isLoading = true;
      });
      final usuario = await _login.call(
        userController.text,
        passwordController.text,
      );

      Navigator.pushReplacementNamed(
        context,
        AppRoutes.dashboard,
        arguments: usuario,
      );
      setState(() {
        _isLoading = false;
      });
      // print('Login successful');
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      // print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('PetCare', style: text.headlineMedium),
        backgroundColor: theme.primary,
        foregroundColor: theme.onPrimary,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Inicio de Sesion', style: text.bodyLarge),
              SizedBox(height: 20),
              SizedBox(
                width: 350,
                child: AppTextField(
                  hint: 'Usuario',
                  label: 'usuario',
                  validator: Validators.required,
                  controller: userController,
                  icono: Icons.person,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 350,
                child: AppTextField(
                  hint: 'Contraseña',
                  label: 'Contraseña',
                  validator: Validators.required,
                  controller: passwordController,
                  icono: Icons.password,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 350,
                child: _isLoading
                    ? LoadingWidget()
                    : AppButton(
                        texto: 'Iniciar Sesion',
                        icono: Icons.login,
                        color: theme.primary,
                        onPressed: login,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
