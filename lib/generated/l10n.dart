// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Best Seller`
  String get bestsellar {
    return Intl.message('Best Seller', name: 'bestsellar', desc: '', args: []);
  }

  /// `Spanish Books`
  String get SpanishBooks {
    return Intl.message(
      'Spanish Books',
      name: 'SpanishBooks',
      desc: '',
      args: [],
    );
  }

  /// `Arabic Books`
  String get ArabicBooks {
    return Intl.message(
      'Arabic Books',
      name: 'ArabicBooks',
      desc: '',
      args: [],
    );
  }

  /// `English Books`
  String get EnglishBooks {
    return Intl.message(
      'English Books',
      name: 'EnglishBooks',
      desc: '',
      args: [],
    );
  }

  /// `French Books`
  String get FrenchBooks {
    return Intl.message(
      'French Books',
      name: 'FrenchBooks',
      desc: '',
      args: [],
    );
  }

  /// `German Books`
  String get GermanBooks {
    return Intl.message(
      'German Books',
      name: 'GermanBooks',
      desc: '',
      args: [],
    );
  }

  /// `Hindi Books`
  String get HindiBooks {
    return Intl.message('Hindi Books', name: 'HindiBooks', desc: '', args: []);
  }

  /// `Russian Books`
  String get RussianBooks {
    return Intl.message(
      'Russian Books',
      name: 'RussianBooks',
      desc: '',
      args: [],
    );
  }

  /// `Chinese Books`
  String get ChineseBooks {
    return Intl.message(
      'Chinese Books',
      name: 'ChineseBooks',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Catebory`
  String get category {
    return Intl.message('Catebory', name: 'category', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
