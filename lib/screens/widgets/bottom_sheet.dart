import 'package:flutter/material.dart';
import 'package:taskly/screens/widgets/my_button.dart';
import 'package:taskly/screens/widgets/textField.dart';

invite(context) {
  final fullnameController = TextEditingController();
  showModalBottomSheet<void>(
    // elevation: 0,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/png/profile1.png",
                    height: 60,
                  ),
                  Image.asset(
                    "assets/images/png/profile2.png",
                    height: 60,
                  ),
                  Image.asset(
                    "assets/images/png/profile3.png",
                    height: 60,
                  ),
                  Image.asset(
                    "assets/images/png/profile4.png",
                    height: 60,
                  ),
                ],
              ),
              SizedBox(height: 30),
              MyTextField(
                controller: fullnameController,
                hintText: "Baby Joe",
                icon: Icon(Icons.person),
                obscureText: false,
                hintTextColor: Colors.black,
              ),
              SizedBox(height: 20),
              MyButton(
                buttonText: "Update Profile",
                buttonColor: Colors.green,
                borderColor: Colors.transparent,
                onTap: () {},
              ),
              SizedBox(height: 20),
              MyButton(
                buttonText: "Log Out",
                buttonColor: Colors.red,
                borderColor: Colors.transparent,
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    },
  );
}
