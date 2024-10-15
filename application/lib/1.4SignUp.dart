import 'package:application/1.6SignUpProcess.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Container(
              width: double.infinity, 
              height: double.infinity, 
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/Pattern.png'), 
                  fit: BoxFit.cover, 
                ),
              )),
          Positioned(
            width: 188,
            left: 115,
            top: 40,
            child: Container(
              width: 188,
              height: 203,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Logo.png"))),
            ),
          ),
          Positioned(
              left: 100,
              top: 300,
              child: Text(
                "Login to your account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )),
          Positioned(
            left: 30,
            top: 360,
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1), width: 0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Email',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(227, 206, 206, 1))),
            ),
          ),
          Positioned(
            left: 30,
            top: 430,
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1), width: 0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(227, 206, 206, 1))),
            ),
          ),
          Positioned(
              left: 150,
              top: 510,
              width: 350,
              child: Text(
                "Or Continue With",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              )),
          Positioned(
              left: 50,
              top: 550,
              child: Container(
                width: 152,
                height: 57,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 252, 249, 249),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/facebook-3 1.png'),
                    Text(
                      "Facebook",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              )),
          Positioned(
              left: 220,
              top: 550,
              child: Container(
                width: 152,
                height: 57,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 252, 249, 249),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/google-icon 1.png'),
                    Text(
                      "Google",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              )),
          Positioned(
              left: 138,
              top: 630,
              child: Text(
                "Forgot Your Password?",
                style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(83, 232, 139, 1)),
              ),
              ),
              Positioned(
              left: 138,
              top: 631,
              child: Text(
                "_______________________",
                style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(83, 232, 139, 1)),
              ),
              ),
              Positioned(
              left: 138,
              top: 700,
              child:  GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SignUpProcess()), 
                  );
                },
                child: Container(
                    child: Center(
                        child: Text(
                      "Login",
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
              )
        ],
      ),
    );
  }
}
