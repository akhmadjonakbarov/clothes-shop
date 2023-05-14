import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_ui/constants/app_colors.dart';
import 'package:online_ui/screens/recommended_screen.dart';
import './widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  SystemChannels()
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            children: [
              Header(title: "E-Shop"),
              const SizedBox(
                height: 30,
              ),
              const CardsList(),
              const SizedBox(
                height: 38,
              ),
              const _Recommended(),
              const GridSystem()
            ],
          ),
          BottomBar()
        ],
      ),
    );
  }
}

class _Recommended extends StatelessWidget {
  const _Recommended({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recommended",
            style: GoogleFonts.leagueSpartan(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return RecommendedScreen();
                },
              ));
            },
            child: Text(
              "See all",
              style: GoogleFonts.leagueSpartan(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: black.withOpacity(0.4)),
            ),
          )
        ],
      ),
    );
  }
}
