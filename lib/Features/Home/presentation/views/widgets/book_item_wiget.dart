import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(AssetsData.tempImage)),
        ),
      ),
    );
  }
}
