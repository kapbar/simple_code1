import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/ui/home_screen.dart';
import 'package:simple_code_lesson_2/ui/login_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simple_code_lesson_2/ui/persons_list/persons_list_widget.dart';
import 'generated/l10n.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primary,
        ),
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
        'persons': (context) => const PersonsListWidget(),
      },
      initialRoute: 'persons',
    );
  }
}
