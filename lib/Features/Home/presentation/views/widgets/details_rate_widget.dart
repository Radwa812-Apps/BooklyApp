import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radwa_back/core/utils/styles.dart';

class DetailsRateWidget extends StatelessWidget {
  const DetailsRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellowAccent),
        SizedBox(width: 10),
        Text("4.8  ", style: Styles.styleText14),
        Text("(2390)", style: Styles.styleText14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
