import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/home_screen.dart';
import 'package:simple_code_lesson_2/login_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: const Color.fromARGB(255, 49, 94, 48)),
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ru', 'RU'),
      supportedLocales: S.delegate.supportedLocales,
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(title: 'Simple app'),
      },
      initialRoute: '/',
    );
  }
}
