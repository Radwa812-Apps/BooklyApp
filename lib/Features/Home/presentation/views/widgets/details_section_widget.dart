import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/book_details_bar_widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/book_item_wiget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/custom_button_widget.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/details_rate_widget.dart';
import 'package:radwa_back/core/utils/functions.dart';
import 'package:radwa_back/core/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsSectionWidget extends StatelessWidget {
  const DetailsSectionWidget({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsBarWidget(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: BookItemImageWidget(
            imageUrl:
                book.volumeInfo?.imageLinks?.thumbnail ??
                'https://www.freepik.com/free-ai-image/beautiful-autumnal-landscape_371208018.htm#fromView=keyword&page=1&position=2&uuid=57bc96b0-3658-4b4e-a25f-8c58bd2296df&query=Free+jpg',
            book: book,
          ),
        ),
        SizedBox(height: 20),
        Text(
          book.volumeInfo!.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle18.copyWith(fontSize: 28),
        ),
        SizedBox(height: 8),
        Opacity(
          opacity: 0.8,
          child: Text(
            book.volumeInfo!.authors![0],
            style: Styles.styleText14.copyWith(
              fontStyle: FontStyle.italic,
              fontSize: 10,
            ),
          ),
        ),
        SizedBox(height: 5),
        DetailsRateWidget(),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: CustomButtonWidget(
                  buttonColor: Colors.white,
                  borderRadiusGeometry: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  textColor: Colors.black,
                  text: 'Free',
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: CustomButtonWidget(
                  buttonColor: const Color.fromARGB(255, 255, 144, 64),
                  borderRadiusGeometry: BorderRadiusGeometry.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  textColor: Colors.white,
                  text: getPre(book.volumeInfo!.previewLink!),
                  onPressed: () {
                    chechUrl(context, book.volumeInfo!.previewLink!);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String getPre(String url) {
    if (url == null) {
      return "Not Avalable";
    } else {
      return "Preview";
    }
  }
}
