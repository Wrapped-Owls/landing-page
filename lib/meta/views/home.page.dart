import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/core/util/app.info.dart';

import 'content/about.dart';
import 'content/people.dart';
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
    return Scaffold(
      appBar: WowlsNavbar.build(context),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              WowlsAbout(),
              WowlsPeople(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConstrainedBox(
        constraints: BoxConstraints.tight(Size.fromHeight(60)),
        child: WowlsFooter(),
      ),
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
