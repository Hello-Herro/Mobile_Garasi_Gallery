import 'package:flutter/material.dart';

import '../constants/strings.dart';

// Primary Color
const Color primaryColor = Color(0xFF16A6F3);
const Color primary50 = Color(0xFFE8F6FE);
const Color primary100 = Color(0xFFB7E3FB);
const Color primary200 = Color(0xFF94D6F9);
const Color primary300 = Color(0xFF63C3F7);
const Color primary400 = Color(0xFF45B8F5);
const Color primary500 = Color(0xFF16A6F3);
const Color primary600 = Color(0xFF1497DD);
const Color primary700 = Color(0xFF1076AD);
const Color primary800 = Color(0xFF0C5B86);
const Color primary900 = Color(0xFF094666);
const Color primaryTry = Color(0xFF0078FF);

// Secondary Color
const Color secondaryColor = Color(0xFF0570CD);
const Color secondary50 = Color(0xFFe6f1fa);
const Color secondary100 = Color(0xFFb2d3f0);
const Color secondary200 = Color(0xFF8cbde8);
const Color secondary300 = Color(0xFF589fde);
const Color secondary400 = Color(0xFF378dd7);
const Color secondary500 = Color(0xFF0570cd);
const Color secondary600 = Color(0xFF0566bb);
const Color secondary700 = Color(0xFF045092);
const Color secondary800 = Color(0xFF033e71);
const Color secondary900 = Color(0xFF022f56);

// Traffic Color
const Color successColor = Color(0xFF238724);
const Color warningColor = Color(0xFFFFBF00);
const Color dangerColor = Color(0xFFD2222D);
const Color backgroundColor = Color(0xFFF5F5F5);

// Black foundation
const Color blackColor = Color(0xFF000000);
const Color black50 = Color(0xFFe6e6e6);
const Color black100 = Color(0xFFb0b0b0);
const Color black200 = Color(0xFF8a8a8a);
const Color black300 = Color(0xFF545454);
const Color black400 = Color(0xFF333333);

const TextTheme myTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 29,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      fontSize: 17,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      fontSize: 10,
    ),
    labelMedium: TextStyle(fontSize: 8));

const IconData addCircleOutline =
    IconData(0xFF16A6F3, fontFamily: 'MaterialIcons');

const double padding = 20;
const double padding2 = 14;
const double padding3 = 10;

const double radius = 10;
const double radius2 = 30;

const int shimmerColor = 0xFFC7C7C7;

ThemeData mainTheme = ThemeData(
  fontFamily: appFontFamily,
  textTheme: myTextTheme,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: primaryColor, secondary: Colors.white),
  tabBarTheme: TabBarTheme(
    splashFactory: NoSplash.splashFactory,
    overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
    labelStyle: myTextTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
    unselectedLabelStyle: myTextTheme.bodyMedium,
    labelColor: primaryColor,
    unselectedLabelColor: black200,
    indicatorColor: primaryColor,
    indicatorSize: TabBarIndicatorSize.label,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: primaryColor,
    selectedLabelStyle: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: primaryColor,
    ),
  ),
);
