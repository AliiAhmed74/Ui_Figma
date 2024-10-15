import 'package:flutter/material.dart';

class SuccessNotification extends StatefulWidget {
  const SuccessNotification({super.key});

  @override
  State<SuccessNotification> createState() => _SuccessNotificationState();
}

class _SuccessNotificationState extends State<SuccessNotification> {
  @override
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
                  image:
                      AssetImage('assets/Pattern.png'), // Your image asset here
                  fit: BoxFit.cover, // Ensures the image covers the container
                ),
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80, left: 15),
              child: Container(
                width: 188,
                height: 203,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Illustration (1).png"))),
              ),
            ),
          ),
          Positioned(
              top: 500,
              left: 145,
              child: Text(
                "Congrats!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(83, 232, 139, 1)),
              )),
          Positioned(
              top: 560,
              left: 65,
              child: Text(
                "Your Profile is Ready To Use",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(9, 5, 28, 1)),
              )),
          Positioned(
            left: 138,
            top: 700,
            child: Container(
                child: Center(
                    child: Text(
                  "Back",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.bold),
                )),
                width: 150,
                height: 57,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(83, 232, 139, 1),
                      Color.fromRGBO(21, 190, 119, 1)
                    ])),
              ),
          ),
        ],
      ),
    );
  }
}
