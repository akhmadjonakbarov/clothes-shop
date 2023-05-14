import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 29,
            left: 24,
          ),
          width: 309,
          height: 186,
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            "Woman",
            style: GoogleFonts.leagueSpartan(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: -20,
          child: Container(
            child: Image.asset("assets/images/stylish.png"),
          ),
        )
      ],
    );
  }
}
