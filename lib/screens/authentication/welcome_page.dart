import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskly/screens/authentication/sign_up.dart';

import 'package:taskly/screens/widgets/my_button.dart';

import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          child: Column(
            children: [
              //welcome image
              SvgPicture.asset(
                "assets/images/svg/welcome.svg",
                height: 300,
              ),
              const SizedBox(height: 20),

              //Hello text
              const Text(
                "Hello !",
                style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 3,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              //wellcom text
              const Text(
                "Welcome to the best Task manager baby !",
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 3,
                    wordSpacing: 2,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 30),

              //Login Button
              MyButton(
                buttonText: "Login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),

              //signup button
              MyButton(
                buttonText: "Sign up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),

              //Register later button
              MyButton(
                buttonText: "Register Later",
                buttonColor: Colors.transparent,
                textColor: Colors.orange,
                borderColor: Colors.orange,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
