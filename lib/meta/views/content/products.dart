import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/meta/widgets/cards/product.card.dart';

class WowlsProducts extends StatelessWidget {
  final double height;

  const WowlsProducts({Key? key, this.height = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
        minWidth: MediaQuery.of(context).size.width / 2,
      ),
      alignment: Alignment.center,
      child: ProductCard(),
    );
  }
}
