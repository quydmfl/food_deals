import 'package:flutter/material.dart';

class Languages {
  Languages._internal();

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('vi'),
  ];

  static Locale defaultLocale = supportedLocales.first;

  static String? defaultLocaleString = supportedLocales.first.languageCode;

  static Locale fallbackLocale = supportedLocales.first;
}
