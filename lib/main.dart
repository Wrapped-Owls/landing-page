import 'package:flutter/material.dart';

import 'src/views/home.page.dart';
import 'theme.wrappedowls.dart';

void main() {
  runApp(WowlsApp());
}

class WowlsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrapped Owls',
      home: WowlsHomePage(),
      theme: UuuUhuThemes.getLight(),
      darkTheme: UuuUhuThemes.getDark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
