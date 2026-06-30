import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radwa_back/Features/search/presentation/view_model/search/search_result_cubit.dart';
import 'package:radwa_back/Features/search/presentation/views/widget/search_feild_widget.dart';
import 'package:radwa_back/Features/search/presentation/views/widget/search_result_widget.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SearchFeildWidget(),
            BlocBuilder<SearchResultCubit, SearchResultState>(
              builder: (context, state) {
                if (state is SearchResultSuccess) {
                  return SearchResultWidget(books: state.searchBook,);
                } else if (state is SearchResultFailure) {
                  return Text(state.err);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
