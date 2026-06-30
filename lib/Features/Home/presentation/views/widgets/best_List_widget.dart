import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radwa_back/Features/Home/presentation/views/view_model/newest_books/newest_books_cubit.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/best_Item_widget.dart';

class BestSellerListWidget extends StatelessWidget {
  const BestSellerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            // shrinkWrap: true  هي كدا هتتضطر تبني علي عناصر الليست مره واحده مش لما اليور يروحلها ودا بيفرق ف الاداء
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: BestSellerItemWidget(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFailer) {
          return Text("Error in Fetch data${state.err} ");
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
