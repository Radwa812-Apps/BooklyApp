import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radwa_back/core/utils/styles.dart';

class BestSellerRateWidget extends StatelessWidget {
  const BestSellerRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "19.99 €",
          style: Styles.styleText20.copyWith(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellowAccent),
        SizedBox(width: 10),
        Text("4.8 ", style: Styles.styleText14),
        Text("(2390)", style: Styles.styleText14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
