import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/book_item_wiget.dart';
import 'package:radwa_back/core/utils/styles.dart';

class MoreBooksSection extends StatelessWidget {
  const MoreBooksSection({super.key, required this.book});
  final List<BookModel> book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like",
            style: Styles.styleText14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: book.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: BookItemImageWidget(
                imageUrl:
                    book[index].volumeInfo?.imageLinks?.thumbnail ??
                    "https://i.pinimg.com/1200x/0d/84/16/0d8416d15a838293cabd8e13f91aadac.jpg",
                book: book[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
