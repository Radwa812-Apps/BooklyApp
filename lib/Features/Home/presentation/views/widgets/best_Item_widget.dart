import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/Best_Item_Title_Widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/best_Item_Rate_Widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/best_image_widget.dart';
import 'package:radwa_back/core/app_routers.dart';
class BestSellerItemWidget extends StatelessWidget {
  const BestSellerItemWidget({
    super.key, required this.bookModel,
  });
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (
      onTap: ()=>context.go(AppRouters.bookDetailsView,extra: bookModel),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BestSellerItemImageWidget(bookModel: bookModel,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BestSellerItemTitleWidget(bookModel: bookModel,),
                  BestSellerRateWidget(bookModel: bookModel,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
