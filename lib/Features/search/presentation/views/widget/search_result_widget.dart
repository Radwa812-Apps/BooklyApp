import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/best_Item_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: books.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: BestSellerItemWidget(bookModel: books[index]),
          );
        },
      ),
    );
  }
}
