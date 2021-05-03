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

  static Widget buildActions(BuildContext context) {
    return ToggleButtons(
      isSelected: [false, false],
      renderBorder: false,
      constraints: BoxConstraints.tight(Size.fromWidth(80)),
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          child: Text('DevTools'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          child: Text('Products'),
        ),
      ],
    );
  }

  static AppBar build(BuildContext context) {
    return AppBar(
      leading: buildLeading(),
      actions: [
        buildActions(context),
        SizedBox(
          width: 10,
        ),
        buildToggleTheme(),
      ],
    );
  }
}
