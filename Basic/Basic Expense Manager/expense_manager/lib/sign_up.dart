
import 'package:expense_manager/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State createState() => _SignUpState();
}

class _SignUpState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Center(
                child: SvgPicture.asset(
                  "assets/spash_img.svg"
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Create your Account",
                style: GoogleFonts.poppins(
                  fontWeight:FontWeight.w500,
                  fontSize:16,
                  color:const Color.fromRGBO(0, 0, 0, 1)
                ),
              ),
              const SizedBox(height: 10),
              Form(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 49,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const[
                          BoxShadow(
                            offset: Offset(0,3),
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: TextFormField(  
                        keyboardType: TextInputType.name,        
                        decoration: InputDecoration( 
                          hintText: "   Name",
                          hintStyle: GoogleFonts.poppins(
                            fontSize:12,
                            fontWeight:FontWeight.w400,
                            color:const Color.fromRGBO(0, 0, 0, 0.4),
                            
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const[
                          BoxShadow(
                            offset: Offset(0,3),
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: TextFormField(   
                        keyboardType: TextInputType.text,       
                        decoration: InputDecoration( 
                          hintText: "   Username",
                          hintStyle: GoogleFonts.poppins(
                            fontSize:12,
                            fontWeight:FontWeight.w400,
                            color:const Color.fromRGBO(0, 0, 0, 0.4),
                            
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const[
                          BoxShadow(
                            offset: Offset(0,3),
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: TextFormField(     
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,     
                        decoration: InputDecoration( 
                          hintText: "   Password",
                          hintStyle: GoogleFonts.poppins(
                            fontSize:12,
                            fontWeight:FontWeight.w400,
                            color:const Color.fromRGBO(0, 0, 0, 0.4),
                            
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const[
                          BoxShadow(
                            offset: Offset(0,3),
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: TextFormField(      
                        obscureText: true,    
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration( 
                          hintText: "   Confirm Password",
                          hintStyle: GoogleFonts.poppins(
                            fontSize:12,
                            fontWeight:FontWeight.w400,
                            color:const Color.fromRGBO(0, 0, 0, 0.4),
                            
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                )
              ),
              const SizedBox(height: 20),
              GestureDetector(
                child: Container(
                  height: 49,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(14, 161, 125, 1),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w500,
                        fontSize:15,
                        color:const Color.fromRGBO(255, 255, 255, 1)
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:12,
                      color:const Color.fromRGBO(0, 0, 0, 0.6)
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w400,
                        fontSize:12,
                        color:const Color.fromRGBO(14, 161, 125, 1)
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}