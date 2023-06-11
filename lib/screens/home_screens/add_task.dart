import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:taskly/screens/widgets/round_button.dart';
import 'package:taskly/screens/widgets/textField.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Add Task",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        elevation: 0,

        // Back arror icon
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title textfield
                Text(
                  "Title",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MyTextField(
                  controller: titleController,
                  hintText: "Enter Title",
                  obscureText: false,
                ),
                SizedBox(height: 20),

                //Note textfield
                Text(
                  "Note",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MyTextField(
                  controller: titleController,
                  hintText: "Enter Note",
                  obscureText: false,
                ),

                SizedBox(height: 20),

                //Date textfield
                Text(
                  "Date",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MyTextField(
                  controller: titleController,
                  hintText: "03/05/2023",
                  obscureText: false,
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Start Time
                          const Text(
                            "Start Time",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          MyTextField(
                            controller: titleController,
                            hintText: "03/05/2023",
                            obscureText: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //End Time
                          const Text(
                            "End Time",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          MyTextField(
                            controller: titleController,
                            hintText: "03/05/2023",
                            obscureText: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                //Reminder
                Text(
                  "Reminder",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MyTextField(
                  controller: titleController,
                  hintText: "5 min earlier",
                  obscureText: false,
                ),
                SizedBox(height: 20),

                //Colors
                const Text(
                  "Colors",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlue,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    SizedBox(width: 40),
                    RoundButton(
                      buttonText: "Create Task",
                      onTap: () {},
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
