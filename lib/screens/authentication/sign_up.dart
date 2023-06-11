import 'package:flutter/material.dart';
import 'package:taskly/screens/home_screens/home_page.dart';
import 'package:taskly/screens/widgets/my_button.dart';
import 'package:taskly/screens/widgets/square_tile.dart';
import 'package:taskly/screens/widgets/textField.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        // Back arror icon
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Welcome text
              const Text(
                "Heey !",
                style: TextStyle(
                  letterSpacing: 2,
                  fontFamily: "Monstarrat",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              Text(
                "Create a new Account !",
                style: TextStyle(
                    letterSpacing: 2,
                    fontFamily: "Monstarrat",
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 70),

              //FullName textField
              MyTextField(
                controller: fullnameController,
                hintText: "Full Name",
                icon: const Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                obscureText: false,
              ),
              SizedBox(height: 30),

              //Email Textfield
              MyTextField(
                controller: emailController,
                hintText: "Email",
                icon: const Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
                obscureText: false,
              ),
              SizedBox(height: 30),

              //Password textfield
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  icon: const Icon(
                    Icons.password,
                    color: Colors.orange,
                  ),
                  obscureText: false),
              SizedBox(height: 30),

              //Login button
              MyButton(
                buttonText: "Login",
                onTap: () {},
              ),
              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //Google image
                  SquareTile(imagePath: "assets/images/png/google_image.png"),

                  SizedBox(width: 20),

                  // Apple image
                  SquareTile(imagePath: "assets/images/png/apple.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
