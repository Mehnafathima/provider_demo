import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/components/custom_button.dart';
import 'package:flutter_provider_demo/components/custom_textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //for the icon
              Icon(Icons.lock_open_rounded,
                  size: 120,
                  color: Theme.of(context).colorScheme.inversePrimary),
              const SizedBox(height: 25),

              //for the text desc
              Text(
                "Delivery at your fingertip",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),

              //for the email
              CustomTextField(
                hintText: "Email",
                controller: emailController,
                obscureText: false,
              ),

              const SizedBox(height: 25),
              //for the password
              CustomTextField(
                hintText: "Password",
                controller: passwordController,
                obscureText: true,
              ),
              //confirm pswd

              const SizedBox(height: 25),
              //for the password
              CustomTextField(
                hintText: "Password",
                controller: passwordController,
                obscureText: true,
              ),
              //button
              const SizedBox(height: 25),

              CustomButton(
                text: "Sign Up",
                onTap: (){},
              ),
              //not a member
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Here",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
