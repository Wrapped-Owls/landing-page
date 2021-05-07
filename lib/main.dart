import 'package:flutter/material.dart';

import 'app/shared/theme.wrappedowls.dart';
import 'core/util/global.functions.dart';
import 'meta/views/home.page.dart';

void main() {
  runApp(WowlsApp());
}

class WowlsApp extends StatefulWidget {
  @override
  _WowlsAppState createState() => _WowlsAppState();
}

class _WowlsAppState extends State<WowlsApp> {
  @override
  void initState() {
    super.initState();
    GlobalFunctions.setGlobalState = setState;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrapped Owls',
      home: WowlsHomePage(),
      theme: UuuUhuThemes.getLight(),
      darkTheme: UuuUhuThemes.getDark(),
      themeMode: UuuUhuThemes.currentThemeMode(),
      debugShowCheckedModeBanner: false,
    );
  }
}
