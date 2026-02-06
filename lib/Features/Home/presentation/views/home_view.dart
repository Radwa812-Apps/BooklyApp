import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/appBar_widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/bestSellerList_widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/book_list_widget.dart';
import '../../../../core/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBarWidget(),
                  BookListWidget(),
                  SizedBox(height: 50),
                  Text("Best Seller", style: Styles.textStyle18),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BestSellerListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
