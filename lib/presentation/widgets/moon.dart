import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
  const Moon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFF8983F7),
              Color(0xFFA3DAF8),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
    );
  }
}
