import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/appBar_widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/book_list_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarWidget(),
          BookListWidget(),
        ],
      ),
    );
  }
}
