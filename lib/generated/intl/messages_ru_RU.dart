// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru_RU';

  static String m0(total) => "Всего персонажей: ${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alive": MessageLookupByLibrary.simpleMessage("Живой"),
        "close": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "counterValue":
            MessageLookupByLibrary.simpleMessage("Значение счетчика"),
        "create": MessageLookupByLibrary.simpleMessage("Создать"),
        "dead": MessageLookupByLibrary.simpleMessage("Мертвый"),
        "dontHaveAnAccountHint":
            MessageLookupByLibrary.simpleMessage("Ещё нет аккаунта"),
        "english": MessageLookupByLibrary.simpleMessage("Английский"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "findPerson": MessageLookupByLibrary.simpleMessage("Найти персонажа"),
        "inputErrorCheckLogin":
            MessageLookupByLibrary.simpleMessage("Введите логин"),
        "inputErrorCheckPassword":
            MessageLookupByLibrary.simpleMessage("Введите пароль"),
        "inputErrorLoginIsShort": MessageLookupByLibrary.simpleMessage(
            "Логин должен содержать не менее 3 символов"),
        "inputErrorPasswordIsShort": MessageLookupByLibrary.simpleMessage(
            "Пароль должен содержать не менее 8 символов"),
        "inputLoginAndPassword":
            MessageLookupByLibrary.simpleMessage("Введите логин и пароль"),
        "language": MessageLookupByLibrary.simpleMessage("Язык"),
        "login": MessageLookupByLibrary.simpleMessage("Логин"),
        "noData": MessageLookupByLibrary.simpleMessage("Нет данных"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "persons": MessageLookupByLibrary.simpleMessage("Персонажи"),
        "personsTotal": m0,
        "russian": MessageLookupByLibrary.simpleMessage("Русский"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "signIn": MessageLookupByLibrary.simpleMessage("Войти"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Попробуйте снова"),
        "wrongLoginOrPassword": MessageLookupByLibrary.simpleMessage(
            "Введен неверный логин или пароль")
      };
}
