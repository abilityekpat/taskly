import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinkit extends StatelessWidget {
  const Spinkit({super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitRotatingCircle(
      color: Colors.white,
      size: 50.0,
    );
  }
}
