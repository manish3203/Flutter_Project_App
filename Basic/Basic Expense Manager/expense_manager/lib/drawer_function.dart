

import 'package:expense_manager/DrawerMenus/category_page.dart';
import 'package:expense_manager/DrawerMenus/graph_page.dart';
import 'package:expense_manager/DrawerMenus/trash_page.dart';
import 'package:expense_manager/add_transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, dynamic>> listDrawer = [
  {"img1":"assets/transaction.svg","name1":"Transaction"},
  {"img1":"assets/graphs.svg","name1":"Graphs"},
  {"img1":"assets/category.svg","name1":"Category"},
  {"img1":"assets/trash.svg","name1":"Trash"},
  {"img1":"assets/aboutus.svg","name1":"AboutUs"},
];

Widget drawerwidget(BuildContext context) {
  return Drawer(
    width: 225,
    child: Padding(
      padding: const EdgeInsets.only(top: 34.0,left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Expense Manager",
            style: GoogleFonts.poppins(
              fontWeight:FontWeight.w600,
              fontSize:16,
              color:const Color.fromRGBO(0, 0, 0, 1)
            ),
          ),
          Text(
            "Saves all your Transactions",
            style: GoogleFonts.poppins(
              fontWeight:FontWeight.w400,
              fontSize:10,
              color:const Color.fromRGBO(0, 0, 0, 0.5)
            ),
          ),
          const SizedBox(height:40),
           GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddTransactions()));
            },
             child: Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/transaction.svg"
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Transactions",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:16,
                      color:const Color.fromRGBO(14, 161, 125, 1)
                    ),
                  ),
                ],
              ),
                       ),
           ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const GraphPage()));
            },
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/graphs.svg"
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Graphs",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:16,
                      color:const Color.fromRGBO(14, 161, 125, 1)
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoryPage()));
            },
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/category.svg"
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:16,
                      color:const Color.fromRGBO(14, 161, 125, 1)
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TrashPage()));
            },
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/trash.svg"
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Trash",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:16,
                      color:const Color.fromRGBO(14, 161, 125, 1)
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/aboutus.svg"
                ),
                const SizedBox(width: 10),
                Text(
                  "AboutUs",
                  style: GoogleFonts.poppins(
                    fontWeight:FontWeight.w400,
                    fontSize:16,
                    color:const Color.fromRGBO(14, 161, 125, 1)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}