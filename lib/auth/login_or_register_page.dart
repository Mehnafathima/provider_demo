import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/pages/login_page.dart';
import 'package:flutter_provider_demo/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginpage = true;
  void togglePage() {
    setState(() {
      showLoginpage = !showLoginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginpage) {
      return  LoginPage(
        onTap: togglePage,
      );
    }
    else{
      return  RegisterPage(
      onTap: togglePage,
      );
    }
  }
}
