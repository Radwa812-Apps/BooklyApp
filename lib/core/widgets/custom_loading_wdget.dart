import 'package:flutter/material.dart';

class CustomLoadingWdget extends StatelessWidget {
  const CustomLoadingWdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
