import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), // Top left corner radius
              topRight: Radius.circular(15.0),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blue,
                Colors.grey,
                Colors.red,
              ],
            ),
            boxShadow: [
              // Add boxShadow
              BoxShadow(
                color: Colors.red.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3), // Adjust offset for shadow direction
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Icon(
                  Icons.rss_feed,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1234 5678 3452 4090',
                  style: GoogleFonts.openSans(
                    wordSpacing: 13,
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 90,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0), // Top left corner radius
              bottomRight: Radius.circular(15.0),
            ),
            color: Colors.white,
            border: Border(
              left: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            ),
            boxShadow: [
              // Add boxShadow
              BoxShadow(
                color: Colors.purple.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3), // Adjust offset for shadow direction
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ayush Gaur',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.5,
                      ),
                    ),
                    // Text(
                    //   'Exp: 09/24',
                    //   style: GoogleFonts.openSans(
                    //     fontSize: 18,
                    //     color: Colors.black,
                    //     fontWeight: FontWeight.w500,
                    //     letterSpacing: -0.5,
                    //   ),
                    // ),
                    RichText(
                      text: TextSpan(
                        text: 'Exp:  ',
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                        ),
                        children: [
                          TextSpan(
                            text: '09 / 24 ',
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              // letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/card_icon.png',
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
