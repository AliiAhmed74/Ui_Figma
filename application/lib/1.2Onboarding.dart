import 'package:application/1.3Onboarding.dart';
import 'package:flutter/material.dart';

class SecondOnBoarding extends StatefulWidget {
  const SecondOnBoarding({super.key});

  @override
  State<SecondOnBoarding> createState() => _SecondOnBoardingState();
}

class _SecondOnBoardingState extends State<SecondOnBoarding> {
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
                    "assets/Illustartion.png",
                  )),
            ),
          ),
          Column(
            children: [
              Text(
                "Find your Comfort",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromRGBO(9, 5, 28, 1)),
              ),
              Text("Food here",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromRGBO(9, 5, 28, 1))),
              SizedBox(
                height: 20,
              ),
              Text("Here You Can find a chef or dish for every",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color.fromRGBO(9, 5, 28, 1))),
              Text("tasta and color. Enjoy!",
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
                            ThirdOnBoarding()), 
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
