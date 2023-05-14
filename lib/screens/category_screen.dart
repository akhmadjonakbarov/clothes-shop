import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            _header(),
            TabBar(
              indicatorColor: primary,
              labelStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              labelColor: black,
              tabs: const [
                Tab(text: "Man"),
                Tab(text: "Women"),
                Tab(text: "Kids"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      _card(),
                      Expanded(
                        child: GridView(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 24,
                            childAspectRatio: 1.2,
                          ),
                          children: [
                            _categoryItem(
                              iconUrl: "tshirt",
                              label: "Tshirt",
                              onTap: () {},
                            ),
                            _categoryItem(
                              iconUrl: "shorts",
                              label: "Shorts",
                              onTap: () {},
                              imageHeight: 70,
                              imageWidth: 70,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  ListView(
                    children: [],
                  ),
                  ListView(
                    children: [],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _card() {
    return Container(
      margin: const EdgeInsets.all(24),
      width: double.infinity,
      height: 144,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 29, left: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SEASON SALE",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "UP TO 25% OFF",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: secondary,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Terms & Conditions apply*",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: SvgPicture.asset("assets/svgs/polygon.svg"),
            )
          ],
        ),
      ),
    );
  }

  Widget _categoryItem(
      {required String iconUrl,
      required String label,
      required Function()? onTap,
      double imageHeight = 80,
      double imageWidth = 80}) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/svgs/$iconUrl.svg",
              fit: BoxFit.cover,
              height: imageHeight,
              width: imageWidth,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              label,
              style: GoogleFonts.leagueSpartan(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            Text(
              "Categories",
              style: GoogleFonts.leagueSpartan(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
