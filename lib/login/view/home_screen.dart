import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sales Estimate',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xff000000)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Image.asset(
              'assets/addicon.png',
              scale: 4,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Color(0xffE8E8E800))),
                filled: true,
                fillColor: Color(0xffFBFBFB),
                hintText: 'Search',
                hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA5A5A5)),
                suffixIcon: Icon(Icons.search)),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            height: 300,
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 24, right: 19),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '#',
                                    style: TextStyle(color: Color(0xff7D7D7D)),
                                  ),
                                  Text(
                                    'Invoice No',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                              Text(
                                'Customer Name',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff000000)),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Pending',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0xffE81C1C)),
                            ),
                            Row(
                              children: [
                                Text(
                                  'SAR.',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff888888),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  ' 10,000.00',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff000000)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
