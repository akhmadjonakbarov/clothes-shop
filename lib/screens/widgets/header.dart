import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

class Header extends StatelessWidget {
  String title;
  Header({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Container(
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Stack(
                    children: [
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.bell,
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 25,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            color: primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: "Search for tshirts, jeans, shorts, jackets",
                hintStyle: GoogleFonts.leagueSpartan(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
