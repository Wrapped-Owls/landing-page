import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';
import 'package:wrappedowls_landing_page/app/shared/wrappedowls.icons.dart';
import 'package:wrappedowls_landing_page/meta/widgets/cards/product.card.dart';

class WowlsProducts extends StatelessWidget {
  final double height;

  const WowlsProducts({Key? key, this.height = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: height,
        minWidth: MediaQuery.of(context).size.width / 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: ctxSize.width * 0.04,
        vertical: ctxSize.height * 0.1,
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Some of our products',
            style: TextStyle(
              color: UuuUhuThemes.currentPalette(UuuUhuComponents.APPBAR_TEXT),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            overflow: TextOverflow.clip,
          ),
          Divider(
            indent: ctxSize.width * 0.16,
            endIndent: ctxSize.width * 0.16,
          ),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        WrappedOwlsIcons.friggraynd_enemies,
                        color: UuuUhuThemes.currentPalette(
                            UuuUhuComponents.CARD_TITLE),
                      ),
                      child: Text('Games'),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.phone_android,
                        color: UuuUhuThemes.currentPalette(
                            UuuUhuComponents.CARD_TITLE),
                      ),
                      child: Text('Apps'),
                    )
                  ],
                ),
                ProductCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
