
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/Screens/Authentication/login.dart';
import 'package:todolist_app/Utils/authentication_data.dart';

class AuthenticationSignUp extends StatefulWidget {
  const AuthenticationSignUp({super.key});

  @override
  State<AuthenticationSignUp> createState() => _AuthenticationSignUpState();
}


class AuthenticationAppModel {
  String name;
  String email;
  String  password;

  AuthenticationAppModel({required this.name, required this.email, required this.password});
}
class  _AuthenticationSignUpState extends State<AuthenticationSignUp> {

  //Save all data in controllers
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _nameNode = FocusNode();

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailNode = FocusNode();

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passNode = FocusNode();


  //GLOBAL KEYS
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  //Register function to add credential
  void registerCredential(BuildContext context) {

    if(_nameController.text.isEmpty || _emailController.text.isEmpty || _passwordController.text.isEmpty) {
      
      _formKey.currentState?.validate();
    }else {

      credentialList.add(AuthenticationAppModel(
        name: _nameController.text, 
        email: _emailController.text, 
        password: _passwordController.text
      ));
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthenticationApp()));
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
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  "Create New Account",
                  style: GoogleFonts.quicksand(
                    fontWeight:FontWeight.w800,
                    color:const Color.fromRGBO(1, 1, 1, 1),
                    fontSize:30
                  ),
                ),
              ),
              Text(
                "Sign in to create daily task",
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
                      "Name",
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
                        controller: _nameController,
                        focusNode: _nameNode,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          errorBorder: OutlineInputBorder(),
                          enabled: true,
                          hintText: "Enter name",
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*all fields are fill mandatory";
                          }else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
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
                        focusNode: _emailNode,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*all fields are fill mandatory";
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
                        focusNode: _passNode,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                          enabled: true,
                          hintText: "Enter password",
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*all fields are mandatory";
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
                          registerCredential(context);
                        }, 
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(0, 139, 148, 1)),
                          minimumSize: MaterialStatePropertyAll(Size(double.infinity, 60))
                        ),
                        child: Text(
                          "Register",
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
                          "Already have an account ? ",
                          style: GoogleFonts.quicksand(
                            color:const Color.fromRGBO(132, 132, 132, 1),
                            fontWeight:FontWeight.w600
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const AuthenticationApp()));
                          },
                          child: Text(
                            "Login",
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