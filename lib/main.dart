import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/home_screen.dart';
import 'package:simple_code_lesson_2/login_screen.dart';

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
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(title: 'Simple app'),
      },
      initialRoute: '/',
    );
  }
}
