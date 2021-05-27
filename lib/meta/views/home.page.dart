import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/core/util/app.info.dart';
import 'package:wrappedowls_landing_page/meta/views/content/contact_us.dart';

import 'content/about.dart';
import 'content/banner.dart';
import 'content/people.dart';
import 'content/products.dart';
import 'general/footer.dart';
import 'general/navbar.dart';

class WowlsHomePage extends StatefulWidget {
  WowlsHomePage({Key? key}) : super(key: key);

  @override
  _WowlsHomePageState createState() => _WowlsHomePageState();
}

class _WowlsHomePageState extends State<WowlsHomePage> {
  @override
  Widget build(BuildContext context) {
    final parentSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: WowlsNavbar.build(context),
      body: Scrollbar(
        isAlwaysShown: kIsWeb,
        showTrackOnHover: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              WowlsBanner(
                height: (parentSize.height / 4) * 1.6,
              ),
              WowlsAbout(
                height: parentSize.height / 4,
              ),
              WowlsProducts(
                height: parentSize.height / 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: WowlsPeople(
                  height: parentSize.height / 4,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: WowlsContact(),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(minHeight: 100),
                child: WowlsFooter(),
              ),
            ],
          ),
        ),
      ),
      /*bottomNavigationBar: ,*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAboutDialog(
            context: context,
            applicationName: AppInformation.name,
            applicationIcon: AppInformation.icon,
            applicationVersion: AppInformation.version,
            applicationLegalese: AppInformation.legalese,
            children: AppInformation.content,
          );
        },
        tooltip: 'About',
        child: Icon(Icons.info),
      ),
    );
  }
}
