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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Counter value`
  String get counterValue {
    return Intl.message(
      'Counter value',
      name: 'counterValue',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Input login and password`
  String get inputLoginAndPassword {
    return Intl.message(
      'Input login and password',
      name: 'inputLoginAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter login`
  String get inputErrorCheckLogin {
    return Intl.message(
      'Enter login',
      name: 'inputErrorCheckLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login must contain more than 3 symbols`
  String get inputErrorLoginIsShort {
    return Intl.message(
      'Login must contain more than 3 symbols',
      name: 'inputErrorLoginIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get inputErrorCheckPassword {
    return Intl.message(
      'Enter password',
      name: 'inputErrorCheckPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain more than 8 symbols`
  String get inputErrorPasswordIsShort {
    return Intl.message(
      'Password must contain more than 8 symbols',
      name: 'inputErrorPasswordIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Alive`
  String get alive {
    return Intl.message(
      'Alive',
      name: 'alive',
      desc: '',
      args: [],
    );
  }

  /// `Dead`
  String get dead {
    return Intl.message(
      'Dead',
      name: 'dead',
      desc: '',
      args: [],
    );
  }

  /// `Man's`
  String get male {
    return Intl.message(
      'Man`s',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Women's`
  String get female {
    return Intl.message(
      'Women`s',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Human`
  String get man {
    return Intl.message(
      'Human',
      name: 'man',
      desc: '',
      args: [],
    );
  }

  /// `Alien`
  String get alien {
    return Intl.message(
      'Alien',
      name: 'alien',
      desc: '',
      args: [],
    );
  }

  /// `Persons not found`
  String get personsListIsEmpty {
    return Intl.message(
      'Persons not found',
      name: 'personsListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Locations not found`
  String get locationsListIsEmpty {
    return Intl.message(
      'Locations not found',
      name: 'locationsListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Episodes not found`
  String get episodesListIsEmpty {
    return Intl.message(
      'Episodes not found',
      name: 'episodesListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong :-(`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong :-(',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Total persons: {total}`
  String personsTotal(Object total) {
    return Intl.message(
      'Total persons: $total',
      name: 'personsTotal',
      desc: '',
      args: [total],
    );
  }

  /// `Total locations: {total}`
  String locationsTotal(Object total) {
    return Intl.message(
      'Total locations: $total',
      name: 'locationsTotal',
      desc: '',
      args: [total],
    );
  }

  /// `No data`
  String get noData {
    return Intl.message(
      'No data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Find a person`
  String get findPerson {
    return Intl.message(
      'Find a person',
      name: 'findPerson',
      desc: '',
      args: [],
    );
  }

  /// `Find a location`
  String get findLocation {
    return Intl.message(
      'Find a location',
      name: 'findLocation',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet`
  String get dontHaveAnAccountHint {
    return Intl.message(
      'Don\'t have an account yet',
      name: 'dontHaveAnAccountHint',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Wrong login or password`
  String get wrongLoginOrPassword {
    return Intl.message(
      'Wrong login or password',
      name: 'wrongLoginOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Persons`
  String get persons {
    return Intl.message(
      'Persons',
      name: 'persons',
      desc: '',
      args: [],
    );
  }

  /// `Locations`
  String get locations {
    return Intl.message(
      'Locations',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `Episodes`
  String get episodes {
    return Intl.message(
      'Episodes',
      name: 'episodes',
      desc: '',
      args: [],
    );
  }

  /// `Aired`
  String get aired {
    return Intl.message(
      'Aired',
      name: 'aired',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
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
