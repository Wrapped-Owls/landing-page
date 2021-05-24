import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.enum.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';

class WowlsStore extends StatelessWidget {
  final double height;

  const WowlsStore({Key? key, this.height = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: height,
        minWidth: MediaQuery.of(context).size.width / 2,
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Take a look on some of our apps',
            style: TextStyle(
              color: UuuUhuThemes.currentPalette(UuuUhuPalette.APPBAR_TEXT),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            overflow: TextOverflow.clip,
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
