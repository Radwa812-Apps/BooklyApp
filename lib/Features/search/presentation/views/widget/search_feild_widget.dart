import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radwa_back/Features/search/presentation/view_model/search/search_result_cubit.dart';

class SearchFeildWidget extends StatelessWidget {
  SearchFeildWidget({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        controller: searchController,
        onChanged: (value) => context
            .read<SearchResultCubit>()
            .searchFunctionCubit(searchController.text),
        // style: TextStyle(backgroundColor: Colors.white),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              context.read<SearchResultCubit>().searchFunctionCubit(
                searchController.text,
              );
            },
            icon: Icon(Icons.search),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: "Search",
        ),
      ),
    );
  }
}
