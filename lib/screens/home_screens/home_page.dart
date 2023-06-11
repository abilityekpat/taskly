import 'package:flutter/material.dart';
import 'package:taskly/screens/widgets/bottom_sheet.dart';
import 'package:taskly/screens/widgets/display_date.dart';
import 'package:taskly/screens/widgets/round_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/png/profile1.png",
                  height: 60,
                ),
                SizedBox(width: 10),
                const Text(
                  "Hello Baby Jeo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 90),
                const Icon(
                  Icons.settings,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "May, 10th",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RoundButton(
                  buttonText: "+ Add Task",
                  onTap: () {
                    invite(context);
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                DisplayDate(
                  date: "16",
                  day: "THU",
                  month: "MAY",
                ),
                SizedBox(width: 12),
                DisplayDate(
                  date: "17",
                  day: "FRI",
                  month: "May",
                  bodyColor: Colors.transparent,
                  textColor: Colors.black,
                ),
                SizedBox(width: 12),
                DisplayDate(
                  date: "18",
                  day: "SAT",
                  month: "May",
                  bodyColor: Colors.transparent,
                  textColor: Colors.black,
                ),
                SizedBox(width: 12),
                DisplayDate(
                  date: "19",
                  day: "SUN",
                  month: "May",
                  bodyColor: Colors.transparent,
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 120),
            Center(
              child:
                  Image.asset("assets/images/png/clipboard.png", height: 100),
            ),
            SizedBox(height: 30),
            const Center(
                child: Text(
              "There Is No Tasks",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
