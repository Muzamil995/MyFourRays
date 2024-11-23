
import 'package:flutter/material.dart';

import 'package:untitled/Utils/app_theme.dart';

import '../../Home_Point_Screen/view/home_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return   Scaffold(

      body: Stack(
        children: [

          Container(
            decoration: AppTheme.backgroundImageDecoration,
          ),
          SignInScreen()
        ],
      ),
    );
  }
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Adjust the scale factor as necessary to maintain the aspect ratio
    final double scaleFactor = screenWidth / 390.0;

    // ignore: deprecated_member_use
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Center(
      child: Padding(
        padding:   EdgeInsets.symmetric(horizontal: 26.0*scaleFactor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60*scaleFactor,
              backgroundColor: Colors.white,
              // backgroundImage: AssetImage('assets/Four-Rays-Logo 1.png'),

              child: CircleAvatar(
                radius: 55*scaleFactor,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/Four-Rays-Logo 1.png'),

              ),
            ),
            SizedBox(height: 20*scaleFactor),
            Text(
              'Log In to 4 Rays',
              style: TextStyle(fontSize: 24*scaleFactor,color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30*scaleFactor),
            TextField(
             cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8*scaleFactor),
                ),
                focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8*scaleFactor),
                  borderSide: BorderSide(color: Colors.white)
                ),
              ),
            ),

            SizedBox(height: 15*scaleFactor),
            TextField(
              cursorColor: Colors.white,
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(

                labelStyle: TextStyle(color: Colors.white),
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8*scaleFactor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8*scaleFactor),
                  borderSide: BorderSide(color: Colors.white)
                )
              ),
            ),
            SizedBox(height: 30*scaleFactor),


            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFBC1E2D)
                ,
                padding: EdgeInsets.symmetric(vertical: 16*scaleFactor, horizontal: 100*scaleFactor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8*scaleFactor),
                  side: BorderSide()
                )
              ),
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 10*scaleFactor),





          ],
        ),
      ),
    )
    ;
  }
}