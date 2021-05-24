import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.enum.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';

class WowlsMobileApps extends StatelessWidget {
  final double minHeight;

  const WowlsMobileApps({Key? key, this.minHeight = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: minHeight,
        minWidth: ctxSize.width / 2,
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Friggraynd Coming Soon!',
            softWrap: true,
            style: TextStyle(
              color: UuuUhuThemes.currentPalette(UuuUhuPalette.APPBAR_TEXT),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Divider(
            indent: ctxSize.width * 0.16,
            endIndent: ctxSize.width * 0.16,
          ),
        ],
      ),
    );
  }
}
