import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DisplayDate extends StatelessWidget {
  String month;
  String date;
  String day;
  final Color bodyColor;
  final Color textColor;
  DisplayDate({
    super.key,
    required this.date,
    required this.day,
    required this.month,
    this.bodyColor = Colors.orange,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bodyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 20, top: 10, bottom: 20),
            child: Text(
              month,
              style: TextStyle(
                fontSize: 15,
                color: textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Text(date,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: textColor,
                    fontFamily: "Monterrat")),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Text(
              day,
              style: TextStyle(
                fontSize: 15,
                color: textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
