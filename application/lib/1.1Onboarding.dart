import 'package:application/1.2Onboarding.dart';
import 'package:flutter/material.dart';

class firstOnBoarding extends StatefulWidget {
  const firstOnBoarding({super.key});

  @override
  State<firstOnBoarding> createState() => _firstOnBoardingState();
}

class _firstOnBoardingState extends State<firstOnBoarding> {
  @override
  void initState() {
    super.initState();
    // Delay for 5 seconds and navigate to another screen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SecondOnBoarding()), 
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Container(
          width: double.infinity, // Set the width of the container
          height: double.infinity, // Set the height of the container
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Pattern.png'), // Your image asset here
              fit: BoxFit.cover, // Ensures the image covers the container
            ),
      )
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Container(
            width:188,
            height: 203,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Logo.png"))
          
            ),
          ),
        ),
      )
      ],
      ),
    );
  }
}