import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radwa_back/core/utils/assets.dart';
class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Image.asset(AssetsData.splashLogo, width: 100, height: 100),
          Spacer(flex: 1),
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.search)),
        ],
      ),
    );
  }
}
