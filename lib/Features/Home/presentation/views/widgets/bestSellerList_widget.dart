import 'package:flutter/material.dart';
import 'package:radwa_back/Features/Home/presentation/views/widgets/bestSellerItem_widget.dart';

class BestSellerListWidget extends StatelessWidget {
  const BestSellerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true  هي كدا هتتضطر تبني علي عناصر الليست مره واحده مش لما اليور يروحلها ودا بيفرق ف الاداء
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: BestSellerItemWidget(),
        );
      },
    );
  }
}
