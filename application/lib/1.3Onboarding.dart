import 'package:application/1.4SignUp.dart';
import 'package:application/1.5SignIn.dart';
import 'package:flutter/material.dart';

class ThirdOnBoarding extends StatefulWidget {
  const ThirdOnBoarding({super.key});

  @override
  State<ThirdOnBoarding> createState() => _ThirdOnBoardingState();
}

class _ThirdOnBoardingState extends State<ThirdOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
            width: double.infinity,
            height: 434.22,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/Illustration.png",
                  )),
            ),
          ),
          Column(
            children: [
              Text(
                "Food Ninja is Where Your",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromRGBO(9, 5, 28, 1)),
              ),
              Text("Comfort Food Lives",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromRGBO(9, 5, 28, 1))),
              SizedBox(
                height: 20,
              ),
              Text("Enjoy a fast and smooth food delivery at",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color.fromRGBO(9, 5, 28, 1))),
              Text("your doorstep",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color.fromRGBO(9, 5, 28, 1))),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SignIn()), 
                  );
                },
                child: Container(
                  child: Center(
                      child: Text(
                    "Next",
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
        ],
      ),
    );
  }
}
