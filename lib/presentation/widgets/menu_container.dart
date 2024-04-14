import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuContainer extends StatefulWidget {
  final String name;
  final Icon icon;
  // final Widget container;
  MenuContainer({
    super.key,
    required this.name,
    required this.icon,
    // required this.container
  });

  @override
  State<MenuContainer> createState() => _MenuContainerState();
}

class _MenuContainerState extends State<MenuContainer> {
  bool _showContainer = false;
  // Color _arrowIconColor = Pallate.borderGreyColor;
  IconData _arrowIcon = Icons.arrow_forward_ios;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    widget.icon,
                    // Icon(
                    //   Icons.description_outlined,
                    //   color: Colors.grey,
                    //   size: 20,
                    // ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      widget.name,
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showContainer = !_showContainer;
                      _arrowIcon = _showContainer
                          ? Icons.arrow_drop_down
                          : Icons.arrow_forward_ios;
                    });
                  },
                  child: Icon(
                    _arrowIcon,
                    color: Colors.grey,
                    size: 17,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Space between button and container
        if (_showContainer)
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              // border: Border(
              //   bottom: BorderSide(
              //     color: Colors.grey.shade400, // Border color
              //   ),
              //   left: BorderSide(
              //     color: Colors.grey.shade400, // Border color
              //   ),
              //   right: BorderSide(
              //     color: Colors.grey.shade400, // Border color
              //   ),
              // ),
              color: Colors.white,
            ),
          ),
      ],
    );
  }
}
