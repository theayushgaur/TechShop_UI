import 'package:email_ui/presentation/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductDetailPage()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        width: 260,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            // color: const Color.fromRGBO(217, 217, 217, 1),
            color: Colors.grey.shade200,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 210,
                width: 260,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/iphone_1.png',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apple',
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Text(
                        'iPhone 14 Plus',
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -1,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Text(
                        '128 * 256 * 512',
                        style: GoogleFonts.openSans(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -1,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.bookmark_border_outlined,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$ 899',
                    style: GoogleFonts.openSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 58,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(238, 238, 238, 1),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Text(
                          '4.7',
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -1,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
