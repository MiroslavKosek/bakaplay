import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'forgot_password_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  // initially show login page
  String currentPage = 'login';

  // navigate between pages
  void navigateToPage(String page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (currentPage) {
      case 'login':
        return LoginPage(
          onRegisterTap: () => navigateToPage('register'),
          onForgotPasswordTap: () => navigateToPage('forgot_password'),
        );
      case 'register':
        return RegisterPage(
          onLoginTap: () => navigateToPage('login'),
        );
      case 'forgot_password':
        return ForgotPasswordPage(
          onLoginTap: () => navigateToPage('login'),
        );
      default:
        return LoginPage(
          onRegisterTap: () => navigateToPage('register'),
          onForgotPasswordTap: () => navigateToPage('forgot_password'),
        );
    }
  }
}