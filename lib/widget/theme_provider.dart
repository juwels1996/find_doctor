import 'package:find_doctor/widget/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool _loadingTheme = true;
  String? _themeName = 'Light';

  String? get themeName => _themeName;

  set themeName(String? value) {
    _themeName = value;
    notifyListeners();
  }

  bool get loadingTheme => _loadingTheme;

  set loadingTheme(bool value) {
    _loadingTheme = value;
    notifyListeners();
  }



  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  ThemeProvider() {
    loadTheme();

  }

  Future loadTheme() async {
    loadingTheme = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    themeName = prefs.getString('themeName') != null
        ? prefs.getString('themeName')
        : 'Light';

    themeMode = themeName == 'Dark' ? ThemeMode.dark : ThemeMode.light;
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//        statusBarColor: , statusBarBrightness: Brightness.dark));
  }




  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (isOn) {
      prefs.setString('themeName', 'Dark');
    } else {
      prefs.setString('themeName', 'Light');
    }
    notifyListeners();
  }


}

class MyThemes {


  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: PRIMARY_COLOR_DARK,
      accentColor: PRIMARY_ACCENT_COLOR_DARK,
      backgroundColor: Colors.white,
//    footerColor: Colors()
      colorScheme: const ColorScheme.dark(),
      iconTheme: const IconThemeData(color: Colors.redAccent, opacity: 0.8),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
            color: Colors.white54, fontWeight: FontWeight.w400, fontSize: 22),
        bodyText2: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
        headline1: TextStyle(color: BLACK, fontSize: 12),
        headline2: TextStyle(
            color: Colors.white54, fontWeight: FontWeight.w500, fontSize: 14),
        headline3: TextStyle(
            color: Colors.white54, fontWeight: FontWeight.w500, fontSize: 18),
        headline4: TextStyle(
            color: Colors.white54, fontWeight: FontWeight.w400, fontSize: 16),
        headline5: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
        headline6: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),
        subtitle1: TextStyle(
            color: Colors.white54, fontWeight: FontWeight.w400, fontSize: 12),
        subtitle2: TextStyle(
            color: Colors.white54, fontWeight: FontWeight.w400, fontSize: 12),
        caption: TextStyle(
            color: Colors.white54, fontWeight: FontWeight.w400, fontSize: 12),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        prefixStyle: TextStyle(color: PRIMARY_COLOR_DARK),
        focusColor: PRIMARY_COLOR_DARK,
        border: InputBorder.none,
        hoverColor: PRIMARY_COLOR_DARK,
        hintStyle: TextStyle(fontSize: 16),
      ),
      shadowColor: Colors.white24,
      buttonTheme: ButtonThemeData(
        // buttonColor: _primaryColor,
          colorScheme: ColorScheme.fromSwatch(
            backgroundColor: PRIMARY_COLOR_DARK,
            errorColor: Colors.redAccent,
          ),
          textTheme: ButtonTextTheme.primary,
          disabledColor: PRIMARY_COLOR_DARK.withOpacity(.5)),
      appBarTheme: const AppBarTheme(
          elevation: 2,
          backgroundColor: PRIMARY_COLOR_DARK,
          titleTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: PRIMARY_COLOR_DARK, foregroundColor: Colors.white),
      errorColor: Colors.deepOrange);

  static final lightTheme1 = ThemeData(
    scaffoldBackgroundColor: WHITE,
    primaryColor: PRIMARY_COLOR_LIGHT,
    accentColor: PRIMARY_ACCENT_COLOR_LIGHT,
    backgroundColor: BACKGROUND_COLOR,
    fontFamily: 'janna',
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: PRIMARY_COLOR_LIGHT, opacity: 0.8),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
          color: WHITE_1,
          fontWeight: FontWeight.w700,
          fontSize: 34),
      bodyText2: TextStyle(
          color: WHITE_1,
          fontWeight: FontWeight.w400,
          fontSize: 16),
      headline1: TextStyle(
          color: BLACK,
          fontWeight: FontWeight.w700,
          fontSize: 12),
      headline2: TextStyle(
          color: GREY_3,
          fontWeight: FontWeight.w400,
          fontSize: 14),
      headline4: TextStyle(
          color: BLACK_2,
          fontWeight: FontWeight.w500,
          fontSize: 14),
      headline3: TextStyle(
          color: WHITE_GREY,
          fontWeight: FontWeight.w500,
          fontSize: 16),

      headline5: TextStyle(
          color: BLACK_2,
          fontWeight: FontWeight.w500,
          fontSize: 16),

      headline6: TextStyle(
          color: BLACK_2,
          fontWeight: FontWeight.bold,
          fontSize: 34),

      subtitle1: TextStyle(

          color: BLACK, fontWeight: FontWeight.bold, fontSize: 16),
      subtitle2: TextStyle(
          color: BLACK,
          fontWeight: FontWeight.w600,
          fontSize: 14),
      // todo
      caption: TextStyle(
          color: Color(0xff1A0F00), fontWeight: FontWeight.w400, fontSize: 16),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      prefixStyle: TextStyle(color: PRIMARY_COLOR_LIGHT),
      focusColor: PRIMARY_COLOR_LIGHT,
      border: InputBorder.none,
      hoverColor: PRIMARY_COLOR_LIGHT,
      hintStyle: TextStyle(fontSize: 16),
    ),
    shadowColor: PRIMARY_COLOR_LIGHT.withOpacity(.3),
    buttonTheme: ButtonThemeData(
      // buttonColor: _primaryColor,
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.black,
          errorColor: Colors.redAccent,
        ),
        textTheme: ButtonTextTheme.primary,
        disabledColor: PRIMARY_COLOR_LIGHT.withOpacity(.5)),
    appBarTheme: const AppBarTheme(
        elevation: 2,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black87),
        iconTheme: IconThemeData(color: Colors.black87)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: PRIMARY_COLOR_LIGHT, foregroundColor: Colors.white),
    errorColor: Colors.redAccent,
  );

  static final lightTheme2 = ThemeData(
    scaffoldBackgroundColor: WHITE,
    primaryColor: PRIMARY_COLOR_LIGHT,
    accentColor: PRIMARY_ACCENT_COLOR_LIGHT,
    backgroundColor: BACKGROUND_COLOR,
    fontFamily: 'uberMove',
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: PRIMARY_COLOR_LIGHT, opacity: 0.8),
    textTheme: const TextTheme(

      bodyText1: TextStyle(
          color: WHITE_1,
          fontWeight: FontWeight.w700,
          fontSize: 34),
      bodyText2: TextStyle(
          color: WHITE_1,
          fontWeight: FontWeight.w400,
          fontSize: 16),
      headline1: TextStyle(
          color: BLACK,
          fontWeight: FontWeight.w700,
          fontSize: 12),
      headline2: TextStyle(
          color: GREY_3,
          fontWeight: FontWeight.w400,
          fontSize: 16),
      headline4: TextStyle(
          color: BLACK_2,
          fontWeight: FontWeight.w500,
          fontSize: 14),
      headline3: TextStyle(
          color: WHITE_GREY,
          fontWeight: FontWeight.w500,
          fontSize: 16),

      headline5: TextStyle(
          color: BLACK_2,
          fontWeight: FontWeight.w500,
          fontSize: 16),

      headline6: TextStyle(
          color: BLACK_2,
          fontWeight: FontWeight.bold,
          fontSize: 34),


      subtitle1: TextStyle(
          color: BLACK, fontWeight: FontWeight.bold, fontSize: 16),

      subtitle2: TextStyle(
          color: BLACK,
          fontWeight: FontWeight.w600,
          fontSize: 14),
      // todo
      caption: TextStyle(
          color: Color(0xff1A0F00), fontWeight: FontWeight.w400, fontSize: 16),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      prefixStyle: TextStyle(color: PRIMARY_COLOR_LIGHT),
      focusColor: PRIMARY_COLOR_LIGHT,
      border: InputBorder.none,
      hoverColor: PRIMARY_COLOR_LIGHT,
      hintStyle: TextStyle(fontSize: 16),
    ),
    shadowColor: PRIMARY_COLOR_LIGHT.withOpacity(.3),
    buttonTheme: ButtonThemeData(
      // buttonColor: _primaryColor,
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.black,
          errorColor: Colors.redAccent,
        ),
        textTheme: ButtonTextTheme.primary,
        disabledColor: PRIMARY_COLOR_LIGHT.withOpacity(.5)),
    appBarTheme: const AppBarTheme(
        elevation: 2,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black87),
        iconTheme: IconThemeData(color: Colors.black87)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: PRIMARY_COLOR_LIGHT, foregroundColor: Colors.white),
    errorColor: Colors.redAccent,
  );
}