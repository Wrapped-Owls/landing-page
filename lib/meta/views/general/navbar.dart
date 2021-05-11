import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';
import 'package:wrappedowls_landing_page/app/shared/wrappedowls.icons.dart';
import 'package:wrappedowls_landing_page/core/util/global.functions.dart';
import 'package:wrappedowls_landing_page/core/util/helpers/link.helper.dart';

abstract class WowlsNavbar {
  static Widget buildLeading() {
    return IconButton(
      onPressed: launchLink('https://wrappedowl.com/'),
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
      constraints: BoxConstraints.tight(Size.fromWidth(100)),
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
