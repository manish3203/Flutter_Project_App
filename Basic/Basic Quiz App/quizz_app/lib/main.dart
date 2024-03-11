import 'package:flutter/material.dart';
import 'package:quizz_app/quiz_page_java.dart';
import 'package:quizz_app/quiz_page_python.dart';
import 'package:quizz_app/quizz_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: FirstPage(), debugShowCheckedModeBanner: false);
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shadowColor: Colors.white,
        elevation: 10,
        title: const Text(
          "Quiz App",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 120,
                  child: Text(
                    "Select Topic",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizUI()));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, 60))),
                child: const Text(
                  "DART",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                )
              ),
              const SizedBox(height: 20,),
            TextButton(
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizUIJava()));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, 60))),
                child: const Text(
                  "JAVA",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                )
              ),
              const SizedBox(height: 20,),
            TextButton(
                onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizUIPython()));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, 60))),
                child: const Text(
                  "PYTHON",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                )
              )
          ]),
        ),
      ),
    );
  }
}
