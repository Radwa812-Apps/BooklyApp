import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/core/utils/styles.dart';

class BestSellerItemTitleWidget extends StatelessWidget {
  const BestSellerItemTitleWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          bookModel.volumeInfo?.title?? "No Title",
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(bookModel.volumeInfo?.authors?[0]??"", style: Styles.styleText14),
      ),
    );
  }
}
