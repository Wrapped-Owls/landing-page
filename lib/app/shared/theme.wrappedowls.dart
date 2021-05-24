import 'package:flutter/material.dart';

import 'theme.enum.dart';

abstract class UuuUhuThemes {
  static ThemeMode _currentTheme = ThemeMode.system;
  static const light = false;
  static const dark = true;

  static ThemeData _generalTheme(
    ThemeMode mode,
    Brightness brightness,
  ) {
    return ThemeData(
      brightness: brightness,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dialogTheme: DialogTheme(
        backgroundColor: UuuUhuPalette.DIALOG.fromTheme(mode),
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      cardTheme: CardTheme(
        color: UuuUhuPalette.CARD.fromTheme(mode),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: UuuUhuPalette.SELECT_TEXT.fromTheme(mode),
        unselectedLabelColor: UuuUhuPalette.TAB_LABEL.fromTheme(mode),
      ),
      snackBarTheme: SnackBarThemeData(backgroundColor: Colors.grey),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
        backgroundColor: UuuUhuPalette.FAB.fromTheme(mode),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: UuuUhuPalette.INPUT.fromTheme(mode),
        labelStyle: TextStyle(
          fontFamily: 'Poppins',
        ),
        border: OutlineInputBorder(
          // ignore: unnecessary_new
          borderRadius: new BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: UuuUhuPalette.INPUT.fromTheme(mode)),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: UuuUhuPalette.SELECT_TEXT.fromTheme(mode),
        selectionHandleColor: UuuUhuPalette.SELECT_TEXT.fromTheme(mode),
        cursorColor: UuuUhuPalette.SELECT_TEXT.fromTheme(mode),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: UuuUhuPalette.BUTTON.fromTheme(mode),
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: UuuUhuPalette.DIVIDER.fromTheme(mode),
      ),
      //checkbox
      toggleableActiveColor: UuuUhuPalette.CHECKBOX.fromTheme(mode),
      //end-checkbox
      canvasColor: UuuUhuPalette.BACKGROUND.fromTheme(mode),
      scaffoldBackgroundColor: UuuUhuPalette.BACKGROUND.fromTheme(mode),
      appBarTheme: AppBarTheme(
        color: UuuUhuPalette.BAR.fromTheme(mode),
        iconTheme: IconThemeData(
          color: UuuUhuPalette.APPBAR_TEXT.fromTheme(mode),
        ),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: UuuUhuPalette.BAR.fromTheme(mode),
      ),
    );
  }

  static Color currentPalette(UuuUhuPalette desired) {
    return _currentTheme == ThemeMode.dark ? (desired.dark) : (desired.light);
  }

  static Color colorOf(BuildContext context, UuuUhuPalette desired) {
    final tempTheme = _currentTheme;
    setTheme(Theme.of(context).brightness);
    final color = currentPalette(desired);
    _currentTheme = tempTheme;
    return color;
  }

  static ThemeData getLight() {
    return _generalTheme(ThemeMode.light, Brightness.light);
  }

  static ThemeData getDark() {
    return _generalTheme(ThemeMode.dark, Brightness.dark);
  }

  static ThemeMode get themeMode => _currentTheme;

  static bool get currentTheme =>
      _currentTheme == ThemeMode.dark ? dark : light;

  static set currentTheme(bool value) {
    _currentTheme = value ? ThemeMode.dark : ThemeMode.light;
  }

  static void setTheme(Brightness? brightness) {
    currentTheme = brightness == Brightness.dark ? dark : light;
  }
}
