import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.enum.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';
import 'package:wrappedowls_landing_page/core/util/helpers/link.helper.dart';

class BannerPage extends StatelessWidget {
  List<Widget> _pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Under \nConstruction',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: UuuUhuThemes.currentPalette(UuuUhuPalette.TITLE_TEXT),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'We are starting with Flutter web, and creating this '
                'landing page to improve our skills and deliver better '
                'products to you.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: UuuUhuThemes.currentPalette(
                    UuuUhuPalette.APPBAR_TEXT,
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: UuuUhuThemes.currentPalette(UuuUhuPalette.BUTTON),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              onPressed: launchLink('https://github.com/Wrapped-Owls'),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                child: Text(
                  'Visit us on GitHub',
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: AspectRatio(
          aspectRatio: 1.6,
          child: Image.asset(
            'assets/images/banner_image.png',
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 620) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
