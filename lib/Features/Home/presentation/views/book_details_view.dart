import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/presentation/views/view_model/similar/simlar_book_cubit.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/details_section_widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/more_books_section.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<SimlarBookCubit, SimlarBookState>(
          builder: (context, state) {
            if (state is SimilarBooksSuccess) {
              return CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Column(
                        children: [
                          DetailsSectionWidget(
                            book: GoRouterState.of(context).extra as BookModel,
                          ),
                          Expanded(child: SizedBox(height: 30)),
                          MoreBooksSection(book: state.similarBooks),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else if (state is SimilarBooksFailure) {
              return Text(state.err);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
