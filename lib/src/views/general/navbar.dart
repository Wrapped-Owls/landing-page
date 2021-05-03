import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../theme.wrappedowls.dart';
import '../../../wrappedowls.icons.dart';
import '../../util/global.functions.dart';

abstract class WowlsNavbar {
  static Widget buildLeading() {
    return IconButton(
      onPressed: () async {
        const url = 'https://wrappedowl.com/';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      icon: Icon(WrappedOwlsIcons.company_logo),
    );
  }

  static Widget buildToggleTheme() {
    return Row(
      children: [
        Switch(
          value: UuuUhuThemes.currentTheme,
          onChanged: (value) {
            GlobalFunctions.setGlobalState(() {
              UuuUhuThemes.currentTheme = value;
            });
          },
        ),
        Icon(
          UuuUhuThemes.currentTheme ? FontAwesomeIcons.moon : Icons.wb_sunny,
        ),
        SizedBox(
          width: 4,
        ),
      ],
    );
  }

  static List<Widget> buildActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () {},
        child: Text('DevTools'),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        child: Text('Products'),
      ),
      SizedBox(
        width: 10,
      ),
      buildToggleTheme(),
    ];
  }

  static AppBar build(BuildContext context) {
    return AppBar(
      leading: buildLeading(),
      actions: buildActions(context),
    );
  }
}
