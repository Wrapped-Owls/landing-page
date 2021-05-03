import 'package:flutter/material.dart';

import 'src/util/global.functions.dart';
import 'src/views/home.page.dart';
import 'theme.wrappedowls.dart';

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
