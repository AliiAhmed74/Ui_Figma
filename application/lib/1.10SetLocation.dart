import 'package:application/1.11SignUpSuccessNotification.dart';
import 'package:application/1.9UploadPreview.dart';
import 'package:flutter/material.dart';

class Setlocation extends StatefulWidget {
  const Setlocation({super.key});

  @override
  State<Setlocation> createState() => _SetlocationState();
}

class _SetlocationState extends State<Setlocation> {
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
                        "Set Your Location ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Positioned(
                      left: 25,
                      top: 180,
                      child: Text(
                        "This data will be displayed in your account \nprofile for security",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 280, left: 20),
                      child: Stack(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/Pin Logo.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Your Location",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(236, 235, 235, 1),
                                borderRadius: BorderRadius.circular(15)),
                            width: 370,
                            height: 180,
                          ),
                           Positioned(
                            left: 20,
                            top: 100,
                             child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(246, 246, 246, 1),
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(child: Text("Set Location",style: TextStyle(color: Color.fromRGBO(9, 5, 28, 1),fontSize: 14,fontWeight: FontWeight.bold),)),
                                  width: 322,
                                  height: 57,
                                ),
                           ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 700, left: 138),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpSuccessNotification()));
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
