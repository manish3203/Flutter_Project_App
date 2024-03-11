import 'package:flutter/material.dart';
import 'package:quizz_app/main.dart';

class QuizUIPython extends StatefulWidget {
  const QuizUIPython({super.key});

  @override
  State<QuizUIPython> createState() => _QuizUIPythonState();
}

class SingleQuestionModel {
  final String? question;
  final List? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizUIPythonState extends State<QuizUIPython> {
  List<SingleQuestionModel> questionList = [
    const SingleQuestionModel(
        question: "Which one is NOT a legal variable name ?",
        options: ["Myvar", "my-var", "_myvar", "my_var"],
        answerIndex: 2),
    const SingleQuestionModel(
        question: "What is the correct syntax to output the type of a variable or object in Python? ?",
        options: ["print(typeof x)", "print(typeof(x))", "print(type(x))", "print(typeOf(x))"],
        answerIndex: 2),
    const SingleQuestionModel(
        question: "Which method can be used to remove any whitespace from both the beginning and the end of a string ?",
        options: ["trim()", "strip()", "ptrim()", "len()"],
        answerIndex: 1),
    const SingleQuestionModel(
        question: "Which method can be used to return a string in upper case letters ?",
        options: ["upper()", "toUpperCase()", "upperCase()", "uppercase()"],
        answerIndex: 0),
    const SingleQuestionModel(
        question: "Which method can be used to replace parts of a string ?",
        options: ["repl()", "replaceString()", "switch()", "replace()"],
        answerIndex: 3),
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noCorrectAnswer = 0;

  MaterialStateProperty<Color?> setColor(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == questionList[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      }
      if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      }

      return const MaterialStatePropertyAll(null);
    }

    return const MaterialStatePropertyAll(null);
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }

    if (questionIndex + 1 == questionList.length) {
      questionScreen = false;
      setState(() {});
    }

    if (selectedAnswerIndex == questionList[questionIndex].answerIndex) {
      noCorrectAnswer++;
    }
    questionIndex++;
    selectedAnswerIndex = -1;
  }

  Scaffold isQuestionScreen() {
    if (questionScreen) {
      return Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "PYTHON QUIZ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            shadowColor: Colors.black,
            //color: Colors.white,
            elevation: 10,
            child: SizedBox(
              height: 500,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Questions: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("${questionIndex + 1}/${questionList.length}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Text("${questionList[questionIndex].question}",
                      style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: const MaterialStatePropertyAll(Size(250, 40)),
                        backgroundColor: setColor(0),
                        shadowColor: const MaterialStatePropertyAll(Colors.grey),
                        elevation: const MaterialStatePropertyAll(10)
                      ),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          selectedAnswerIndex = 0;
                          setState(() {});
                        }
                      },
                      child:
                          Text("${questionList[questionIndex].options![0]}")),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: const MaterialStatePropertyAll(Size(250, 40)),
                        backgroundColor: setColor(1),
                        shadowColor: const MaterialStatePropertyAll(Colors.grey),
                        elevation: const MaterialStatePropertyAll(10)
                      ),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          selectedAnswerIndex = 1;
                          setState(() {});
                        }
                      },
                      child:
                          Text("${questionList[questionIndex].options![1]}")),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: const MaterialStatePropertyAll(Size(250, 40)),
                        backgroundColor: setColor(2),
                        shadowColor: const MaterialStatePropertyAll(Colors.grey),
                        elevation: const MaterialStatePropertyAll(10)
                      ),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          selectedAnswerIndex = 2;
                          setState(() {});
                        }
                      },
                      child:
                          Text("${questionList[questionIndex].options![2]}")),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: const MaterialStatePropertyAll(Size(250, 40)),
                          backgroundColor: setColor(3),
                          shadowColor: const MaterialStatePropertyAll(Colors.grey),
                          elevation: const MaterialStatePropertyAll(10)
                        ),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          selectedAnswerIndex = 3;
                          setState(() {});
                        }
                      },
                      child:
                          Text("${questionList[questionIndex].options![3]}")),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
            setState(() {});
          },
          child: const Icon(Icons.arrow_forward),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Quiz App",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 10,
            shadowColor: Colors.black,
            child: SizedBox(
              height: 480,
              width: 300,
              child: Column(
                children: [
                  Image.network(
                    "https://img.freepik.com/free-vector/winner-background-first-place-competition_91128-1587.jpg",
                    height: 300,
                    width: 340,
                  ),
                  const SizedBox(height: 10,),
                  const Text("Congratulations!!! ",
                    style: TextStyle(fontSize:22 ,fontWeight: FontWeight.bold)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "You have completed quiz.",
                    style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)
                  ),
                  Text("$noCorrectAnswer/${questionList.length}",
                    style: const TextStyle(fontSize:16,fontWeight: FontWeight.bold)
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.lightBlue)),
                      onPressed: () {
                        questionIndex = 0;
                        selectedAnswerIndex = -1;
                        questionScreen = true;
                        noCorrectAnswer = 0;
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstPage()));
                        });
                      },
                      child: const Text(
                        "Reset",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                      ))
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
