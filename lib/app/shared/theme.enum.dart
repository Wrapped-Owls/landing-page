import 'package:flutter/material.dart';

enum UuuUhuPalette {
  BAR,
  BACKGROUND,
  FAB,
  DIALOG,
  CARD,
  CARD_TITLE,
  TAB_LABEL,
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

extension UuuUhuColors on UuuUhuPalette {
  static const defaultDark = Color(0xFF5C6A74);
  static const defaultLight = Color(0xffcad5c3);

  Color get dark {
    switch (this) {
      case UuuUhuPalette.BAR:
        return Color(0xFF3E494A);
      case UuuUhuPalette.BACKGROUND:
        return Color(0xFF202626);
      case UuuUhuPalette.FAB:
        return Color(0xFF90CAF9);
      case UuuUhuPalette.DIVIDER:
        return Color(0xFF8ea9ab);
      case UuuUhuPalette.DIALOG:
        return Color(0xFF455A64);
      case UuuUhuPalette.CARD:
        return Color(0xFF576161);
      case UuuUhuPalette.CARD_TITLE:
        return Color(0xFF7AA8B4);
      case UuuUhuPalette.TAB_LABEL:
        return Color(0xFF6D8E95);
      case UuuUhuPalette.CHECKBOX:
        return Color(0xFF4BACBF);
      case UuuUhuPalette.BUTTON:
        return Color(0xFF4BACBF);
      case UuuUhuPalette.INPUT:
        return Color(0xFF67A2F5);
      case UuuUhuPalette.SELECT_TEXT:
        return Color(0xFF557B87);
      case UuuUhuPalette.TITLE_TEXT:
        return Color(0xFFA5D6A7);
      case UuuUhuPalette.APPBAR_TEXT:
        return Color(0xB3FFFFFF);
      case UuuUhuPalette.BOTTOM_SELECTED:
        return Color(0xFFFFA000);
      case UuuUhuPalette.BOTTOM_UNSELECTED:
        return Color(0xB3FFFFFF);
    }
  }

  Color get light {
    switch (this) {
      case UuuUhuPalette.BAR:
        return Color(0xFFd2e9f7);
      case UuuUhuPalette.BACKGROUND:
        return Color(0xFFe3e3e3);
      case UuuUhuPalette.FAB:
        return Color(0xFF6b6475);
      case UuuUhuPalette.DIVIDER:
        return Color(0xFF607D8B);
      case UuuUhuPalette.DIALOG:
        return Color(0xFFc9d6d6);
      case UuuUhuPalette.CARD:
        return Color(0xdadcdad3);
      case UuuUhuPalette.CARD_TITLE:
        return Color(0xFF243622);
      case UuuUhuPalette.TAB_LABEL:
        return Color(0xFF2E4536);
      case UuuUhuPalette.CHECKBOX:
        return Color(0xFF558a6a);
      case UuuUhuPalette.BUTTON:
        return Color(0xFF69F0AE);
      case UuuUhuPalette.INPUT:
        return Color(0xFF1016B3);
      case UuuUhuPalette.SELECT_TEXT:
        return Color(0xFF3C565E);
      case UuuUhuPalette.TITLE_TEXT:
        return Color(0xFF8a8807);
      case UuuUhuPalette.APPBAR_TEXT:
        return Color(0x8A000000);
      case UuuUhuPalette.BOTTOM_SELECTED:
        return Color(0xFF11993a);
      case UuuUhuPalette.BOTTOM_UNSELECTED:
        return Color(0xFF2e2626);
    }
  }

  Color fromTheme(ThemeMode mode) {
    return mode == ThemeMode.dark ? dark : light;
  }

  Color of(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark ? dark : light;
  }
}
