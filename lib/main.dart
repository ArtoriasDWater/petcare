import 'package:flutter/material.dart';
import 'package:core/theme/app_theme.dart';
import 'package:petcare/app/app_router.dart';
import 'package:petcare/app/app_routes.dart';
import 'features/auth/presentation/login_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetCare',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRouter.generateRoute,
      theme: AppTheme.lightTheme,
      home: const LoginPageScreen(),
    );
  }
}
