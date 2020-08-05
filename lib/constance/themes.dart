import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constance.dart' as constance;
class AppTheme {
  static bool isLightTheme = true;

  static ThemeData getTheme() {
    if (isLightTheme) {
      return lightTheme();
    } else {
      return darkTheme();
    }
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline6: GoogleFonts.roboto(
          textStyle: TextStyle(
              color: base.headline6.color,
              fontSize: 20,
              fontWeight: FontWeight.w500)),
      subtitle1: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.subtitle1.color, fontSize: 18)),
      subtitle2: GoogleFonts.roboto(
          textStyle: TextStyle(
              color: base.subtitle2.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      bodyText2: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.bodyText2.color, fontSize: 16)),
      bodyText1: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.bodyText1.color, fontSize: 14)),
      button: GoogleFonts.roboto(
          textStyle: TextStyle(
              color: base.button.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      caption: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.caption.color, fontSize: 12)),
      headline4: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.headline4.color, fontSize: 34)),
      headline3: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.headline3.color, fontSize: 48)),
      headline2: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.headline2.color, fontSize: 60)),
      headline1: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.headline1.color, fontSize: 96)),
      headline5: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.headline5.color, fontSize: 24)),
      overline: GoogleFonts.roboto(
          textStyle: TextStyle(color: base.overline.color, fontSize: 10)),
    );
  }

  static ThemeData lightTheme() {
    Color primaryColor = HexColor(constance.primaryColorString);
    Color secondaryColor = HexColor(constance.secondaryColorString);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );

    final ThemeData base = ThemeData.light();
    return base.copyWith(
        appBarTheme: AppBarTheme(color: Colors.white),
        popupMenuTheme: PopupMenuThemeData(color: Colors.white),
        colorScheme: colorScheme,
        primaryColor: primaryColor,
        buttonColor: primaryColor,
        splashColor: Colors.white.withOpacity(0.1),
        hoverColor: Colors.transparent,
        splashFactory: InkRipple.splashFactory,
        highlightColor: Colors.transparent,
        accentColor: primaryColor,
        canvasColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        errorColor: Colors.red,
        cursorColor: primaryColor,

        // buttonTheme: _buttonThemeData(colorScheme),
        // dialogTheme: _dialogTheme(),
        // cardTheme: _cardTheme(),
        textTheme: _buildTextTheme(base.textTheme),
        primaryTextTheme: _buildTextTheme(base.textTheme),
        platform: TargetPlatform.iOS,
        indicatorColor: primaryColor,
        disabledColor: HexColor("#D5D7D8"));
  }

  static ThemeData darkTheme() {
    Color primaryColor = HexColor(constance.primaryColorString);
    Color secondaryColor = HexColor(constance.secondaryColorString);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      popupMenuTheme: PopupMenuThemeData(color: Colors.black),
      appBarTheme: AppBarTheme(color: Colors.black),
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      backgroundColor: Colors.grey[850],
      scaffoldBackgroundColor: Colors.black,
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      cursorColor: primaryColor,
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
      platform: TargetPlatform.iOS,
    );
  }

//   static ButtonThemeData _buttonThemeData(ColorScheme colorScheme) {
//     return ButtonThemeData(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(4.0),
//       ),
//       colorScheme: colorScheme,
//       textTheme: ButtonTextTheme.primary,
//     );
//   }

//   static DialogTheme _dialogTheme() {
//     return DialogTheme(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.white,
//     );
//   }

//   static CardTheme _cardTheme() {
//     return CardTheme(
//       clipBehavior: Clip.antiAlias,
//       color: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       elevation: 4,
//       margin: EdgeInsets.all(0),
//     );
//   }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
