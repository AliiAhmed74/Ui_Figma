import 'package:application/1.7PaymentMethod.dart';
import 'package:flutter/material.dart';

class SignUpProcess extends StatefulWidget {
  const SignUpProcess({super.key});

  @override
  State<SignUpProcess> createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 254, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Container(
              width: double.infinity,
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Pattern.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 25,
                    top: 50,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(218, 99, 23, 1),
                        ),
                      ),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(255, 222, 185, 1)),
                    ),
                  ),
                  Positioned(
                      left: 25,
                      top: 120,
                      child: Text(
                        "Fill in your bio to get \nstarted ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Positioned(
                      left: 25,
                      top: 220,
                      child: Text(
                        "This data will be displayed in your account \nprofile for security",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'First Name',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(227, 206, 206, 1))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 380),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Last Name',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(227, 206, 206, 1))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 460),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Mobile Number',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(227, 206, 206, 1))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 700, left: 138),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethod()),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
