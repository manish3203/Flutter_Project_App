import 'package:expense_manager/drawer_function.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashPage extends StatefulWidget {
  const TrashPage({super.key});

  @override
  State createState() => _TrashPage();
}

class _TrashPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerwidget(context),
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            fontWeight:FontWeight.w500,
            fontSize:16,
            color:const Color.fromRGBO(33, 33, 33, 1)
          ),
        ),
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
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Image.asset("assets/category/Subtract.png"),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30,),
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
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more ",
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
    );
  }
}