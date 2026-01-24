import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/book_item_wiget.dart';

class BookListWidget extends StatelessWidget {
  const BookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .29,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: BookItemWidget(),
        ),
      ),
    );
  }
}
            // دا لان الكولوم لازم كل حاجه جواه تكون ليها حدود و حجم و الليست فيو بتتوسع ف مش عارفه نهايتها فين ف لازم احجمهاىاو اخليها تاكسباند 
