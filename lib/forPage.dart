import 'package:flutter/material.dart';

class Advestment extends StatefulWidget {
  const Advestment({super.key});

  @override
  State<Advestment> createState() => _AdvestmentState();
}

class _AdvestmentState extends State<Advestment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: AssetImage('assets/image.png'),fit: BoxFit.cover)
      ),

    );
  }
}
