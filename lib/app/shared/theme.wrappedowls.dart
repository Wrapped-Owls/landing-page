import 'package:flutter/material.dart';

enum UuuUhuComponents {
  BAR,
  BACKGROUND,
  FAB,
  DIALOG,
  DIVIDER,
  CHECKBOX,
  BUTTON,
  INPUT,
  SELECT_TEXT,
  TITLE_TEXT,
  APPBAR_TEXT,
  BOTTOM_SELECTED,
  BOTTOM_UNSELECTED
}

abstract class UuuUhuThemes {
  static ThemeMode _currentTheme = ThemeMode.system;
  static const light = false;
  static const dark = true;

  static const _defaultDark = Color(0xFF5C6A74);
  static const _defaultLight = Color(0xffcad5c3);

  static const Map<UuuUhuComponents, Color> darkColors = {
    UuuUhuComponents.BAR: Color(0xFF3E494A),
    UuuUhuComponents.BACKGROUND: Color(0xFF202626),
    UuuUhuComponents.FAB: Color(0xFF90CAF9),
    UuuUhuComponents.DIVIDER: Color(0xFF8ea9ab),
    UuuUhuComponents.DIALOG: Color(0xFF455A64),
    UuuUhuComponents.CHECKBOX: Color(0xFF4BACBF),
    UuuUhuComponents.BUTTON: Color(0xFF4BACBF),
    UuuUhuComponents.INPUT: Color(0xFF67A2F5),
    UuuUhuComponents.SELECT_TEXT: Color(0xFF557B87),
    UuuUhuComponents.TITLE_TEXT: Color(0xFFA5D6A7),
    UuuUhuComponents.APPBAR_TEXT: Color(0xB3FFFFFF),
    UuuUhuComponents.BOTTOM_SELECTED: Color(0xFFFFA000),
    UuuUhuComponents.BOTTOM_UNSELECTED: Color(0xB3FFFFFF),
  };

  static const Map<UuuUhuComponents, Color> lightColors = {
    UuuUhuComponents.BAR: Color(0xFFd2e9f7),
    UuuUhuComponents.BACKGROUND: Color(0xFFe3e3e3),
    UuuUhuComponents.FAB: Color(0xFF6b6475),
    UuuUhuComponents.DIVIDER: Color(0xFF607D8B),
    UuuUhuComponents.DIALOG: Color(0xFFc9d6d6),
    UuuUhuComponents.CHECKBOX: Color(0xFF558a6a),
    UuuUhuComponents.BUTTON: Color(0xFF69F0AE),
    UuuUhuComponents.INPUT: Color(0xFF1016B3),
    UuuUhuComponents.SELECT_TEXT: Color(0xFF3C565E),
    UuuUhuComponents.TITLE_TEXT: Color(0xFF8a8807),
    UuuUhuComponents.APPBAR_TEXT: Color(0x8A000000),
    UuuUhuComponents.BOTTOM_SELECTED: Color(0xFF11993a),
    UuuUhuComponents.BOTTOM_UNSELECTED: Color(0xFF2e2626),
  };

  static ThemeData _generalTheme(
    Map<UuuUhuComponents, Color> palette,
    Brightness brightness,
  ) {
    return ThemeData(
      brightness: brightness,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dialogTheme: DialogTheme(
        backgroundColor: palette[UuuUhuComponents.DIALOG],
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      snackBarTheme: SnackBarThemeData(backgroundColor: Colors.grey),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
        backgroundColor: palette[UuuUhuComponents.FAB],
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: palette[UuuUhuComponents.INPUT],
        labelStyle: TextStyle(
          fontFamily: 'Poppins',
        ),
        border: OutlineInputBorder(
          // ignore: unnecessary_new
          borderRadius: new BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: palette[UuuUhuComponents.INPUT]!),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: palette[UuuUhuComponents.SELECT_TEXT],
        selectionHandleColor: palette[UuuUhuComponents.SELECT_TEXT],
        cursorColor: palette[UuuUhuComponents.SELECT_TEXT],
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: palette[UuuUhuComponents.BUTTON],
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: palette[UuuUhuComponents.DIVIDER],
      ),
      //checkbox
      toggleableActiveColor: palette[UuuUhuComponents.CHECKBOX],
      //end-checkbox
      canvasColor: palette[UuuUhuComponents.BACKGROUND],
      scaffoldBackgroundColor: palette[UuuUhuComponents.BACKGROUND],
      appBarTheme: AppBarTheme(
        color: palette[UuuUhuComponents.BAR],
        iconTheme: IconThemeData(color: palette[UuuUhuComponents.APPBAR_TEXT]),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: palette[UuuUhuComponents.BAR],
      ),
    );
  }

  static Color currentPalette(UuuUhuComponents desired) {
    return _currentTheme == ThemeMode.dark
        ? (darkColors[desired] ?? _defaultDark)
        : (lightColors[desired] ?? _defaultLight);
  }

  static Color colorOf(BuildContext context, UuuUhuComponents desired) {
    final tempTheme = _currentTheme;
    setTheme(Theme.of(context).brightness);
    final color = currentPalette(desired);
    _currentTheme = tempTheme;
    return color;
  }

  static ThemeData getLight() {
    return _generalTheme(lightColors, Brightness.light);
  }

  static ThemeData getDark() {
    return _generalTheme(darkColors, Brightness.dark);
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
