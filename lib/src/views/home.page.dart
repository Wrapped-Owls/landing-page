import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wrappedowls_landing_page/src/views/general/footer.dart';

import 'content/about.dart';
import 'general/navbar.dart';

class WowlsHomePage extends StatefulWidget {
  WowlsHomePage({Key? key}) : super(key: key);

  @override
  _WowlsHomePageState createState() => _WowlsHomePageState();
}

class _WowlsHomePageState extends State<WowlsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WowlsNavbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WowlsAbout(),
          ],
        ),
      ),
      bottomNavigationBar: ConstrainedBox(
        constraints: BoxConstraints.tight(Size.fromHeight(60)),
        child: WowlsFooter(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'WrappedOwls GitHub',
        child: Icon(FontAwesomeIcons.github),
      ),
    );
  }
}
