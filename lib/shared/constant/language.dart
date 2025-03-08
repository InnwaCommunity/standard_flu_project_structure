import 'package:flutter/material.dart';

enum Languages {
  english(Locale('en'), 'English'),
  myanmar(Locale('my'), 'Myanmar');

  const Languages(this.locale, this.title);

  final Locale locale;
  final String title;

  // String get getImage => switch (this) {
  //       Languages.english => AppImages.icEnglish,
  //       Languages.myanmar => AppImages.icMyanmar,
  //     };
  static Languages getLanguage(Locale locale){
    switch (locale.languageCode) {
      case 'en':
        return Languages.english;
      case 'my':
        return Languages.myanmar;
      default:
        return Languages.english;
    }
  }

}