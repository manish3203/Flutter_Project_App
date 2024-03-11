
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/Screens/Authentication/signup.dart';
import 'package:todolist_app/Screens/todopage.dart';
import 'package:todolist_app/Utils/authentication_data.dart';

int authIndex = -1;

class AuthenticationApp extends StatefulWidget {
  const AuthenticationApp({super.key});

  @override
  State<AuthenticationApp> createState() => _AuthenticationAppState();
}

class  _AuthenticationAppState extends State<AuthenticationApp> {

  //Save all date in controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //GLOBAL KEY
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? errorMessage;


  //checking credential correct or not
  void checkCredential(BuildContext context) {
    setState(() {
      errorMessage = null;
    });

    if (_formKey.currentState!.validate()) {
      String enteredEmail = _emailController.text;
      String enteredPassword = _passwordController.text;

      // Check if the entered credentials match any user's credentials
      bool isValidUser = false;
      
      for(int i=0; i<credentialList.length; i++) {
        isValidUser = credentialList.any((value) => credentialList[i].email == enteredEmail && credentialList[i].password == enteredPassword);
        if(isValidUser == true) {
          authIndex = i;
        }
      }

      if (isValidUser) {
        // If the user is valid, you can navigate to the next screen or perform other actions
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Successful'),
          duration: Duration(seconds: 2),
        ),
      );
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ToDoPage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid email or password'),
          duration: Duration(seconds: 2),
        ),
      );
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text(
                  "Welcome Back",
                  style: GoogleFonts.quicksand(
                    fontWeight:FontWeight.w800,
                    color:const Color.fromRGBO(1, 1, 1, 1),
                    fontSize:30
                  ),
                ),
              ),
              Text(
                "Sign in to continue",
                style: GoogleFonts.quicksand(
                  fontWeight:FontWeight.w800,
                  color:const Color.fromRGBO(132, 132, 132, 1),
                  fontSize:14
                ),
              ),
              const SizedBox(height: 50),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.quicksand(
                        fontSize:14,
                        fontWeight:FontWeight.w800,
                        color:const Color.fromRGBO(1, 1, 1, 1)
                      ),
                    ),
                    Container(
                      height: 55,
                      margin: const EdgeInsets.only(top: 5),
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          errorBorder: OutlineInputBorder(),
                          enabled: true,
                          hintText: "Enter email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: .5,
                              color: Color.fromRGBO(0, 139, 148, 1)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: .5,
                              color: Color.fromRGBO(0, 139, 148, 1)
                            )
                          )
                        ),
                        validator: (value){
                          if(value!.isEmpty) {
                            return "all fields are mandatory";
                          }else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Password",
                      style: GoogleFonts.quicksand(
                        fontSize:14,
                        fontWeight:FontWeight.w800,
                        color:const Color.fromRGBO(1, 1, 1, 1)
                      ),
                    ),
                    Container(
                      height: 55,
                      margin: const EdgeInsets.only(top: 5),
                      child: TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                          enabled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: "Enter password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: .5,
                              color: Color.fromRGBO(0, 139, 148, 1)
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: .5,
                              color: Color.fromRGBO(0, 139, 148, 1)
                            )
                          )
                        ),
                        validator: (value){
                          if(value!.isEmpty) {
                            return "all fields are mandatory";
                          }else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 60),
                    Center(
                      child: ElevatedButton(
                        onPressed: (){
                          checkCredential(context);
                        }, 
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(0, 139, 148, 1)),
                          minimumSize: MaterialStatePropertyAll(Size(double.infinity, 60))
                        ),
                        child: Text(
                          "Login",
                          style: GoogleFonts.quicksand(
                            color:const Color.fromRGBO(255, 255, 255, 1),
                            fontWeight:FontWeight.w800,
                            fontSize:16
                          ),
                        )
                      ),
                    ),
                    const SizedBox(height:5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account ? ",
                          style: GoogleFonts.quicksand(
                            color:const Color.fromRGBO(132, 132, 132, 1),
                            fontWeight:FontWeight.w600
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthenticationSignUp()));
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.quicksand(
                              color:const Color.fromRGBO(0, 139, 148, 1),
                              fontWeight:FontWeight.w800
                            )
                          ),
                        )
                      ],
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}