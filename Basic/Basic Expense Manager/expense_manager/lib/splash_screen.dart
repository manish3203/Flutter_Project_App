
import 'dart:async';
import 'package:expense_manager/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUp()));
     });
  }
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 80, top: 280),
              height: 144,
              width: 144,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(234, 238, 235, 1),
                shape: BoxShape.circle
              ),
              child: Transform.scale(
                scale: 0.7,
                child: SvgPicture.asset(
                  "assets/spash_img.svg"
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                fontSize:16,
                fontWeight:FontWeight.w800,
                color:const Color.fromRGBO(0, 0, 0, 1)
              ),
            ),
          )
        ],
      )
    );
  }
}