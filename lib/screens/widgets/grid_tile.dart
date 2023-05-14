import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_ui/constants/app_colors.dart';

class GridTile_ extends StatelessWidget {
  const GridTile_({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: 190,
                  height: 200,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=705&q=80",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 14, top: 14),
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: primary,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Text(
              "Olive Zip-Front Jacket",
              style: GoogleFonts.leagueSpartan(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: black,
              ),
            ),
          ),
          Text(
            "Rs. 3,499",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }
}
