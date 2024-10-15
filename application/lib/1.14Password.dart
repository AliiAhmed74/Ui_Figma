import 'package:application/1.15SuccessNotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  bool isObscure = true;
  Color iconColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset("assets/Icon Back.png")),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/Pattern.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reset your password \nhere',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Select which contact details should we \nuse to reset your password',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          obscureText: isObscure,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: iconColor, // Change icon color
                                ),
                                onPressed: () {
                                  setState(() {
                                    isObscure =
                                        !isObscure; // Toggle password visibility
                                    iconColor = Colors
                                        .green; // Change the icon color to green when pressed
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    width: 0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: 'NewPassword',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(227, 206, 206, 1))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          obscureText: isObscure,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: iconColor, // Change icon color
                                ),
                                onPressed: () {
                                  setState(() {
                                    isObscure =
                                        !isObscure; // Toggle password visibility
                                    iconColor = Colors
                                        .green; // Change the icon color to green when pressed
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    width: 0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(227, 206, 206, 1))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 125, top: 240),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SuccessNotification(),
                                  ));
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
          )
        ],
      ),
    );
  }
}
