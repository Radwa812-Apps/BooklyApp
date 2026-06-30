import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/core/app_routers.dart';

import '../../../../../core/utils/assets.dart';

class BookItemImageWidget extends StatelessWidget {
  const BookItemImageWidget({super.key, required this.imageUrl, required this.book});
final BookModel book;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: GestureDetector(
        onTap: () {
          return context.go(AppRouters.bookDetailsView,extra: book);
        },
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
