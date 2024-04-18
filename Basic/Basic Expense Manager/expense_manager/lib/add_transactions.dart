
import 'package:expense_manager/drawer_function.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTransactions extends StatefulWidget {
  const AddTransactions({super.key});

  @override
  State createState() => _AddTransactionsState();
}

class _AddTransactionsState extends State {

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
                  Text(
                    "Date",
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
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: "Date",
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
                    "Amount",
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
                        hintText: "Amount",
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
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Category",
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
                    "Description",
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
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: "Description",
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
      drawer:drawerwidget(context),
      appBar: AppBar(
        actions: [
          const SizedBox(width: 50),
          Text(
            "June 2022",
            style: GoogleFonts.poppins(
              fontWeight:FontWeight.w500,
              fontSize:16,
              color:const Color.fromRGBO(33, 33, 33, 1)
            ),
          ),
          const Spacer(),
          const Icon(Icons.search),
          const SizedBox(width: 20,)
        ],
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset("assets/category/medicine1.png",scale: 1.7,),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                  "Medicine",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                const Spacer(),
                                const Icon(Icons.remove_circle, color: Color.fromRGBO(246, 113, 49, 1),),
                                const SizedBox(width: 5,),
                                Text(
                                  "500",
                                  style: GoogleFonts.poppins(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text",
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10),
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  "3 June |",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  " 11:50 AM ",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Color.fromRGBO(206, 206, 206, 1)),
                ],
              ),
            );
          }),
      floatingActionButton: Container(
        width: 166,
        height: 46,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(67))
        ),
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
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(14, 161, 125, 1)
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
              Text(
                "Add Transaction",
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