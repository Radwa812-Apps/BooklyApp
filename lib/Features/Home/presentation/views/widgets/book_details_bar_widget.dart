import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:radwa_back/core/app_routers.dart';

class BookDetailsBarWidget extends StatelessWidget {
  const BookDetailsBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              context.go(AppRouters.homeView);
            },
            icon: Icon(Icons.close),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
