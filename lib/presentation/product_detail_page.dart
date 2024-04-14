import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:email_ui/presentation/pay_page.dart';
import 'package:email_ui/presentation/widgets/menu_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: const Color.fromRGBO(245, 245, 245, 1),
            height: 230,
            width: double.infinity,
            child: AnotherCarousel(
              showIndicator: false,
              images: [
                Image.asset(
                  'assets/iphone_1.png',
                ),
                Image.asset('assets/iphone_1.png'),
                Image.asset('assets/iphone_1.png'),
                Image.asset('assets/iphone_1.png'),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product  /  Digital  /  Apple',
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Text(
                  'iPhone 14 plus',
                  style: GoogleFonts.openSans(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Text(
                          '  4.7  ',
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.5,
                          ),
                        ),
                        const Icon(
                          Icons.fiber_manual_record,
                          color: Colors.grey,
                          size: 10,
                        ),
                        Text(
                          '  132 Reviews',
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '92%',
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(4k) of users suggested',
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Product info',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  'ProductinfoProductinfoProducinfoProducinfoProducinfoProducProductinfoProductinfoProducinfoProducinfoProducinfoProducinfoProduct infoProduct infoProduct infoProduct infoProduct infoProduct infoProduct infoProduct info ',
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Container(
                  height: 170,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MenuContainer(
                          icon: const Icon(
                            Icons.description_outlined,
                            color: Colors.grey,
                            size: 23,
                          ),
                          name: 'Product Detail',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        MenuContainer(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.grey,
                            size: 21,
                          ),
                          name: 'Reviews',
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' \$899',
                          style: GoogleFonts.openSans(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          'Delivery within 2-5 days',
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              color: Colors.grey.shade400,
                              width: 1.0,
                            ),
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PayPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20),
                        child: Text(
                          'Add to Cart',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
