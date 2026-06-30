import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:radwa_back/Features/search/presentation/view_model/search/search_result_cubit.dart';
import 'package:radwa_back/Features/search/presentation/views/widget/search_feild_widget.dart';
import 'package:radwa_back/Features/search/presentation/views/widget/search_result_widget.dart';
import 'package:radwa_back/core/app_routers.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => context.go(AppRouters.homeView),
            icon: Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SafeArea(child: SearchFeildWidget()),
          ),
        ),
        body: Column(
          children: [
            BlocBuilder<SearchResultCubit, SearchResultState>(
              builder: (context, state) {
                if (state is SearchResultSuccess) {
                  return SearchResultWidget(books: state.searchBook);
                } else if (state is SearchResultFailure) {
                  return Text(state.err);
                } else if (state is SearchResultLoading) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
