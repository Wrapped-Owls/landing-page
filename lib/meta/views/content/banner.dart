import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';
import 'package:wrappedowls_landing_page/meta/widgets/pages/banner.page.dart';

class WowlsBanner extends StatelessWidget {
  final double height;

  const WowlsBanner({Key? key, this.height = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: height,
        minWidth: contextSize.width / 2,
      ),
      /*foregroundDecoration: BoxDecoration( //commented until know how to fix
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            UuuUhuThemes.currentPalette(UuuUhuComponents.BACKGROUND),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.85, 1],
        ),
      ),*/
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            UuuUhuThemes.currentPalette(UuuUhuComponents.DIALOG),
            UuuUhuThemes.currentPalette(UuuUhuComponents.BAR),
          ],
        ),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: contextSize.width * 0.06),
        child: BannerPage(),
      ),
    );
  }
}
