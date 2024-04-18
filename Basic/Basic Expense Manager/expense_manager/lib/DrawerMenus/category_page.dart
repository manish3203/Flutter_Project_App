
import 'package:expense_manager/drawer_function.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State createState() => _CategoryPageState();
}

class _CategoryPageState extends State {

  Future<void> _showDialog() {
    return showDialog(
      context: context, 
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.2),
      barrierDismissible: false,
      builder: ((context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: Center(
            child: Text(
              "Delete Category",
              style: GoogleFonts.poppins(
                fontSize:16,
                fontWeight:FontWeight.w500,
                color:const Color.fromRGBO(0, 0, 0, 1)
              ),
            ),
          ),
          content: Text(
            textAlign: TextAlign.center,
            "Are you sure you want to delete the selected category?",
            style: GoogleFonts.poppins(
              fontSize:12,
              fontWeight:FontWeight.w400,
              color:const Color.fromRGBO(0, 0, 0, 1)
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 100,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(14, 161, 125, 1)
                    ),
                    child: Text(
                      "Delete",
                      style: GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight:FontWeight.w500,
                        color:const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 100,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(140, 128, 128, 0.2)
                    ),
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight:FontWeight.w500,
                        color:const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        );
      })
    );
  }


  void showModalSheet(BuildContext context) {
     showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 94,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(140, 128, 128, 0.2)
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/category/bottomsheet.png"
                          ),
                        ),
                        Text(
                          "Add",
                          style: GoogleFonts.poppins(
                            fontSize:13,
                            color:const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight:FontWeight.w400
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Text(
                    "Image URL",
                    style: GoogleFonts.poppins(
                      fontSize:13,
                      color:const Color.fromRGBO(33, 33, 33, 1),
                      fontWeight:FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 316,
                    height: 36,
                    child: TextFormField(
                      keyboardType: TextInputType.url,
                      decoration: InputDecoration(
                        hintText: "Enter URL",
                        hintStyle: const TextStyle(fontSize: 15),
                        contentPadding: const EdgeInsets.only(left: 10, top: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: .5,
                            color: Color.fromRGBO(191, 189, 189, 1)
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: .5,
                            color: Color.fromRGBO(191, 189, 189, 1)
                          )
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                      fontSize:13,
                      color:const Color.fromRGBO(33, 33, 33, 1),
                      fontWeight:FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 316,
                    height: 36,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter category name",
                        hintStyle: const TextStyle(fontSize: 15),
                        contentPadding: const EdgeInsets.only(left: 10, top: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: .5,
                            color: Color.fromRGBO(191, 189, 189, 1)
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: .5,
                            color: Color.fromRGBO(191, 189, 189, 1)
                          )
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: GestureDetector(
                      child: Container(
                        width: 123,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(67)),
                          color: Color.fromRGBO(14, 161, 125, 1)
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style:GoogleFonts.poppins(
                              fontWeight:FontWeight.w500,
                              fontSize:16,
                              color:const Color.fromRGBO(255, 255, 255, 1)
                            )
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerwidget(context),
      appBar: AppBar(
        title: Text(
          "Category",
          style: GoogleFonts.poppins(
            fontWeight:FontWeight.w500,
            fontSize:16,
            color:const Color.fromRGBO(33, 33, 33, 1)
          ),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(18.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0
        ),
        
        children: [
          GestureDetector(
            onLongPress: (){
              _showDialog();
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const[
                  BoxShadow(
                    offset: Offset(1,2),
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 8
                  )
                ]
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/category/food1.png"
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Food",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w500,
                      fontSize:16,
                      color:const Color.fromRGBO(33, 33, 33, 1)
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onLongPress: (){
              _showDialog();
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const[
                  BoxShadow(
                    offset: Offset(1,2),
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 8
                  )
                ]
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/category/fuel1.png"
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Fuel",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w500,
                      fontSize:16,
                      color:const Color.fromRGBO(33, 33, 33, 1)
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onLongPress: (){
              _showDialog();
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const[
                  BoxShadow(
                    offset: Offset(1,2),
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 8
                  )
                ]
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/category/medicine1.png"
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Medicine",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w500,
                      fontSize:16,
                      color:const Color.fromRGBO(33, 33, 33, 1)
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onLongPress: (){
              _showDialog();
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const[
                  BoxShadow(
                    offset: Offset(1,2),
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 8
                  )
                ]
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/category/shopping.png"
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Shopping",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w500,
                      fontSize:16,
                      color:const Color.fromRGBO(33, 33, 33, 1)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 166,
        child: FloatingActionButton(
          onPressed: (){
            showModalSheet(context);
          },
          backgroundColor: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 32,
                width: 32,
                decoration:const BoxDecoration(
                  color: Color.fromRGBO(14, 161, 125, 1),
                  
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
              Text(
                "Add Category",
                style:GoogleFonts.poppins(
                  fontWeight:FontWeight.w400,
                  fontSize:12,
                  color:const Color.fromRGBO(0, 0, 0 , 1)
                )
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}