import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import './widgets.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CardTile();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: 2,
      ),
    );
  }
}
