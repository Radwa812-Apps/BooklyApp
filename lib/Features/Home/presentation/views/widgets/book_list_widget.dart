import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radwa_back/Features/Home/presentation/views/view_model/feature_cubit/feature_books_cubit.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/book_item_wiget.dart';
import 'package:radwa_back/core/widgets/custom_error_widget.dart';
import 'package:radwa_back/core/widgets/custom_loading_wdget.dart';

class FeaturedBookListWidget extends StatelessWidget {
  const FeaturedBookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .29,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: BookItemImageWidget(
                  imageUrl:
                      state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                      'https://www.freepik.com/free-ai-image/beautiful-autumnal-landscape_371208018.htm#fromView=keyword&page=1&position=2&uuid=57bc96b0-3658-4b4e-a25f-8c58bd2296df&query=Free+jpg',
                  book:state.books[index],
                ),
              ),
            ),
          );
        } else if (state is FeatureBooksFailer) {
          return CustomErrorWidget(errorMesg: state.err);
        } else {
          return CustomLoadingWdget();
        }
      },
    );
  }
}
