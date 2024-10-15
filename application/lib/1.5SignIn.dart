import 'package:application/1.4SignUp.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool obscureText = true;
  bool isChecked = false;
  bool isChecked2 = false;
  void togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText; // Toggle the password visibility
    });
  }
  void toggleIconColor() {
    setState(() {
      isChecked = !isChecked; // Toggle the checked state
    });
  }
  void toggleIconColor2() {
    setState(() {
      isChecked2 = !isChecked2; // Toggle the checked state
    });
  }

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
                  image: AssetImage('assets/Pattern.png'),
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
              left: 123,
              top: 300,
              child: Text(
                "Sign Up For Free",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )),
          Positioned(
            left: 30,
            top: 360,
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_2_rounded,
                    color: Color.fromRGBO(83, 232, 139, 1),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1), width: 0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Anamwp..',
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
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromRGBO(83, 232, 139, 1),
                  ),
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
            top: 500,
            width: 350,
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(83, 232, 139, 1),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      togglePasswordVisibility();
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
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
              left: 30,
              top: 580,
              child: Row(
                children: [
                IconButton(
                  icon: Icon(
                    Icons.check_circle_rounded,
                    color: isChecked
                        ? Colors.white
                        : Color.fromRGBO(
                            83, 232, 139, 1), // Change color based on state
                  ),
                  onPressed: toggleIconColor, // Toggle color on press
                ),
                Text(
                  "Keep Me Signed In",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ])),
              Positioned(
              left: 30,
              top: 620,
              child: Row(
                children: [
                IconButton(
                  icon: Icon(
                    Icons.check_circle_rounded,
                    color: isChecked2
                        ? Colors.white
                        : Color.fromRGBO(
                            83, 232, 139, 1), // Change color based on state
                  ),
                  onPressed: toggleIconColor2, // Toggle color on press
                ),
                Text(
                  "Email Me About Special Pricing",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ])),
              Positioned(
              left: 138,
              top: 700,
              child:  Container(
                  child: Center(
                      child: Text(
                    "Create Account",
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
              Positioned(
              left: 130,
              top: 780,
              child: Container(
                child: Text(
                  "Already Have An Account?",
                
                  style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(83, 232, 139, 1)),
                ),
              )),
               Positioned(
              left: 130,
              top: 781,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SignUp()), 
                  );
                },
                child: Text(
                  "__________________________",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(83, 232, 139, 1)),
                ),
              ),
              ),
        ],
      ),
    );
  }
}
