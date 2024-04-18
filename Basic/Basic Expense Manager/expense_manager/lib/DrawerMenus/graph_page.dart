
import 'package:expense_manager/drawer_function.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State createState() => _GraphPageState();
}

class _GraphPageState extends State {

  Map<String, double> dataMap = {
    "Food": 15,
    "Fuel": 13,
    "Medicine": 12,
    "Entertainment": 12,
    "Shopping":8
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerwidget(context),
      appBar: AppBar(
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
            fontWeight:FontWeight.w500,
            fontSize:16,
            color:const Color.fromRGBO(33, 33, 33, 1)
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            PieChart(
              dataMap: dataMap,
              chartType: ChartType.ring,
              chartRadius: MediaQuery.of(context).size.width / 2.5,
              chartLegendSpacing: 32,
              ringStrokeWidth: 30,
              animationDuration: const Duration(seconds: 2),
              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: false,
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
              centerWidget: Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                        fontSize:10,
                        fontWeight:FontWeight.w400,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                      ),
                    ),
                    Text(
                      "₹ 2550.00",
                      style: GoogleFonts.poppins(
                        fontSize:13,
                        fontWeight:FontWeight.w600,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Column(
                children: [
                  const Divider(
                    thickness: 0.2,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/category/food1.png",scale: 2.0,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Food",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 650.00",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w500,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Icon(Icons.arrow_forward_ios_outlined,size: 8.0,color: Color.fromRGBO(0, 0, 0, 0.5),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/category/fuel1.png",scale: 2.0,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Fuel",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 600.00",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w500,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Icon(Icons.arrow_forward_ios_outlined,size: 8.0,color: Color.fromRGBO(0, 0, 0, 0.5),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/category/medicine1.png",scale: 2.0,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 500.00",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w500,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Icon(Icons.arrow_forward_ios_outlined,size: 8.0,color: Color.fromRGBO(0, 0, 0, 0.5),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    child: Row(
                      children: [
                        Container(
                          height: 37,
                          width: 37,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape:BoxShape.circle,
                            color: Color.fromRGBO(100, 62, 255, 0.7)
                          ),
                          child: Image.asset(
                            "assets/category/entertainment.png",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Entertainment",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 475.00",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w500,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Icon(Icons.arrow_forward_ios_outlined,size: 8.0,color: Color.fromRGBO(0, 0, 0, 0.5),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/category/shopping.png",scale: 2.0,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Shopping",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 325.00",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w500,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Icon(Icons.arrow_forward_ios_outlined,size: 8.0,color: Color.fromRGBO(0, 0, 0, 0.5),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    thickness: 0.2,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                            fontSize:16,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.currency_rupee,size: 15.0,color:Color.fromRGBO(0, 0, 0, 1),fill: 1.0,),
                        Text(
                          "2,550.00",
                          style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w600,
                            fontSize:15,
                            color:const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}