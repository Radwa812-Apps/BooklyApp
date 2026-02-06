

import 'package:flutter/material.dart';
import 'package:radwa_back/core/utils/styles.dart';

class BestSellerItemTitleWidget extends StatelessWidget {
  const BestSellerItemTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Harry Poter and the Coblet of Fire",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          "J.K Rowling",
          style: Styles.styleText14,
        ),
      ),
    );
  }
}
