import 'package:flutter/material.dart';
import '/screens/widgets/widgets.dart';

class GridSystem extends StatelessWidget {
  const GridSystem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 24,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return const GridTile_();
      },
    );
  }
}
