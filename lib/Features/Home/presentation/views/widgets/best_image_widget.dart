import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerItemImageWidget extends StatelessWidget {
  const BestSellerItemImageWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.brown,
            image: DecorationImage(
              image: NetworkImage(
                bookModel.volumeInfo?.imageLinks?.thumbnail ??
                    "https://www.magnific.com/free-vector/hand-drawn-no-data-concept_55024598.htm#fromView=keyword&page=1&position=1&uuid=ceedac43-e37e-4667-8ab6-60c49bdedd9a&query=Illustrations+for+no+data",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
