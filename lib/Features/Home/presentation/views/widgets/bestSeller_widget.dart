import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerItemImageWidget extends StatelessWidget {
  const BestSellerItemImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.brown,
            image: DecorationImage(image: AssetImage(AssetsData.tempImage)),
          ),
        ),
      ),
    );
  }
}
