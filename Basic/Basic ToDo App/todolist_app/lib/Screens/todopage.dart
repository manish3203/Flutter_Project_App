import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/Screens/Authentication/login.dart';
import 'package:todolist_app/Utils/authentication_data.dart';
import 'package:todolist_app/Utils/utils.dart';
import 'package:intl/intl.dart';


class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() {
    return _ToDoPageState();
  }
}

//collection of data in ToDoAppModel
class ToDoAppModel {

  String title;
  String description;
  String date;

  ToDoAppModel({required this.title, required this.description, required this.date});
}

class _ToDoPageState extends State<ToDoPage> {

  //controllers to store data
  final TextEditingController _titleController = TextEditingController();
  final FocusNode _titleNode = FocusNode();

  final TextEditingController _descriptionController = TextEditingController();
  final FocusNode _descriptionNode = FocusNode();

  final TextEditingController _dateController = TextEditingController();
  final FocusNode _dateNode = FocusNode();

  //GLOBAL KEYS
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  //when screen is empty then false and not empty then true
  bool screenPage = false;
  bool isEditTask = false;
  int isCurrentIndex = -1;


  //function trimAllSpaces
  String trimAllSpaces(String str) {
    // Trim leading and trailing spaces
    str = str.trim();

    // Replace multiple spaces between words with a single space
    str = str.replaceAllMapped(RegExp(r'\s+'), (match) {
      // Preserve the length of the matched spaces
      return ' ' * match.group(0)!.length;
    });

    // Return the modified string
    return str;
  }


  //trim or space handling and call to trimAllSpaces
  void controllerTextHandle() {
    _titleController.text = trimAllSpaces(_titleController.text);
    _descriptionController.text = trimAllSpaces(_descriptionController.text);
    _dateController.text = trimAllSpaces(_dateController.text);
  }


  //checkScreen
  void checkScreen() {
      if(taskList.isNotEmpty) {
        screenPage = true;
      }else {
        screenPage = false;
      }
  }


  //submit operation
  void submitTask() {
  
    // Handling the text controllers
    controllerTextHandle();

    // Check if any field is empty
    if (_titleController.text.isEmpty || _descriptionController.text.isEmpty || _dateController.text.isEmpty) {
      _formKey.currentState!.validate();
    } else {

      // Check if it's an edit task or adding a new task
      if (!isEditTask) {
        // Add new task to taskList
        taskList.add(
          ToDoAppModel(
            title: _titleController.text,
            description: _descriptionController.text,
            date: _dateController.text,
          ),
        );
      } else {
        // Edit existing task in taskList
        taskList[isCurrentIndex].title = _titleController.text;
        taskList[isCurrentIndex].description = _descriptionController.text;
        taskList[isCurrentIndex].date = _dateController.text;
      }

      // Reset state and clear controllers
      setState(() {
        checkScreen();
        isCurrentIndex = -1;
        isEditTask = false;
        removeController();
      });

      // Close the modal bottom sheet
      Navigator.pop(context);
    }
  }


  //date function
  void addDate(BuildContext context) async{
    DateTime? pickedDate = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate: DateTime(2024), 
      lastDate: DateTime(2026)
    );

  //formated data to print
    String formatedDate = DateFormat.yMMMd().format(pickedDate!);
    _dateController.text = formatedDate;
  }


  //Remove controllers data
  void removeController() {
    _titleController.clear();
    _descriptionController.clear();
    _dateController.clear();
  }


  //edit task operation
  void editTask() {
    _titleController.text = taskList[isCurrentIndex].title;
    _descriptionController.text = taskList[isCurrentIndex].description;
    _dateController.text = taskList[isCurrentIndex].date;
    
    isEditTask = true;
    addTask(context);
  }


  //delete task
  void deleteTask() {
    setState(() {
      if(taskList.isNotEmpty && isCurrentIndex != -1) {
        taskList.removeAt(isCurrentIndex);
      }
      checkScreen();
    });
  }


  // add task function
  void addTask(BuildContext context) { 
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 9),
                  child: Text(
                    "Title",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  height: 60,
                  child: TextFormField(
                    controller: _titleController,
                    focusNode: _titleNode,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "title",
                      hintStyle: const TextStyle(fontSize: 15),
                      contentPadding: const EdgeInsets.only(left: 10, top: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: .5,
                          color: Color.fromRGBO(0, 139, 148, 1)
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: .5,
                          color: Color.fromRGBO(0, 139, 148, 1)
                        )
                      ),
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return "*Please enter title";
                      }else {
                        return null;
                      }
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 9),
                  child: Text(
                    "Description",
                    style: GoogleFonts.quicksand(        
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  height: 100,
                  child: TextFormField(
                    controller: _descriptionController,
                    focusNode: _descriptionNode,
                    maxLines: 4,
                    //keyboardType: TextInputType.text,
                    //textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintText: "description",
                      hintStyle: const TextStyle(fontSize: 15),
                      contentPadding: const EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: .5,
                          color: Color.fromRGBO(0, 139, 148, 1)
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: .5,
                          color: Color.fromRGBO(0, 139, 148, 1)
                        )
                      ),
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return "*Please enter description";
                      }else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 9),
                  child: Text(
                    "Date",
                    style: GoogleFonts.quicksand(   
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  height: 60,
                  child: TextFormField(
                    controller: _dateController,
                    focusNode: _dateNode,
                    readOnly: true,
                    onTap: () {
                      addDate(context);
                    },
                    decoration: InputDecoration(
                      hintText: "YYYY-MM-DD",
                      hintStyle: const TextStyle(fontSize: 15),
                      suffixIcon: const Icon(Icons.date_range_sharp),
                      contentPadding: const EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: .5,
                          color: Color.fromRGBO(0, 139, 148, 1)
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: .5,
                          color: Color.fromRGBO(0, 139, 148, 1)
                        )
                      ),
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return "*Please enter date";
                      }else {
                        return null;
                      }
                    },
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)
                      )
                    ),
                    fixedSize: const MaterialStatePropertyAll(Size(310,50)),
                    foregroundColor: const MaterialStatePropertyAll(Colors.white),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(0, 139, 148, 1)
                    )
                  ),
                  onPressed: (){
                    submitTask();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.quicksand(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "Welcome ${credentialList[authIndex].name}",
          style: GoogleFonts.quicksand(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 22,
            height: 18,
          ),
        ),
      ),
      body: (screenPage == false)
          ? SingleChildScrollView(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Image.asset(
                    'assets/todohome.png',
                    height: 500,
                    width: 300,
                  ),
                  Text(
                    "Please add the task . . . !",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(2, 167, 177, 1),
                      fontWeight: FontWeight.w700),
                    )
                  ]
                )
              ),
          )
          : Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 112,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: colorList[index % colorList.length],
                        borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: 52,
                                height: 52,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                                child: Image.asset(
                                  "assets/Group 42.jpg",
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      taskList[index].title,
                                      style: GoogleFonts.quicksand(
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12
                                      ),
                                    ),
                                    Text(
                                      taskList[index].description,
                                      style: GoogleFonts.quicksand(
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                taskList[index].date,
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(132, 132, 132, 1),
                                  fontSize: 10
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  isCurrentIndex = index;
                                  editTask();
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: (){
                                  isCurrentIndex = index;
                                  deleteTask();
                                },
                                child: const Icon(
                                  Icons.delete_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  ),
                                ),
                                const SizedBox(width: 10)
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          removeController();
          addTask(context);
        },
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        child: const Text("Add"),
      ),
    );
  }
}
