import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_ui/screens/widgets/widgets.dart';

import '../constants/app_colors.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                Header(title: "Apparel"),
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                    child: ListView.separated(
                  padding: const EdgeInsets.all(0),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Container(
                                  width: double.infinity,
                                  height: 325,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=705&q=80",
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 14, top: 14),
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
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Olive Zip-Front Jacket",
                                      style: GoogleFonts.leagueSpartan(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Rs. 3,499",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    )
                                  ],
                                ),
                                IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ))
              ],
            ),
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
