import 'package:application/1.13ViaMethod.dart';
import 'package:flutter/material.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
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
                            "Enter 4-digit \nVerification Code ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Positioned(
                          left: 25,
                          top: 220,
                          child: Text(
                            "Code send to +6282045**** This code will \nexpired in 1:30",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.only(top:300),
                  child: Stack(
                    children: [
                      Container(width: 400,height: 105,decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(20)),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildVerificationCodeField(context),
                          buildVerificationCodeField(context),
                          buildVerificationCodeField(context),
                          buildVerificationCodeField(context),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
            left: 138,
            top: 700,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViaMethod()));
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
              ))]),
        ],
      ));
  }

   Widget buildVerificationCodeField(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus(); // Move to the next field automatically
          }
        },
      ),
    );
  }
}
