
import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/BestSellerItemTitle_Widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/bestSellerItemRateWidget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/bestSeller_widget.dart';
class BestSellerItemWidget extends StatelessWidget {
  const BestSellerItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BestSellerItemImageWidget(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BestSellerItemTitleWidget(),
                BestSellerRateWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
