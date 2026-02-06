import 'dart:ui';
import 'package:flutter/material.dart';

import '../../constans.dart'; // من غيرها طلع ايورو علي Fontstyle

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: kGildaDisplayFont,
  );

  static const styleText20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const styleText14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
