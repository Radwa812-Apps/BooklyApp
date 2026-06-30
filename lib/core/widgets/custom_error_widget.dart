import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMesg});

  final String errorMesg;
  @override
  Widget build(BuildContext context) {
    return Text(errorMesg, style: TextStyle(fontSize: 24));
  }
}
            // دا لان الكولوم لازم كل حاجه جواه تكون ليها حدود و حجم و الليست فيو بتتوسع ف مش عارفه نهايتها فين ف لازم احجمهاىاو اخليها تاكسباند 
