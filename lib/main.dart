import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/ui/episodes_list/episodes_details.dart';
import 'package:simple_code_lesson_2/ui/episodes_list/episodes_list.dart';
import 'package:simple_code_lesson_2/ui/locations_list/location_details.dart';
import 'package:simple_code_lesson_2/ui/locations_list/locations_list.dart';
import 'package:simple_code_lesson_2/widgets/init_widget.dart';
import 'package:simple_code_lesson_2/ui/settings_screen.dart';
import 'package:simple_code_lesson_2/ui/login/login_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simple_code_lesson_2/ui/persons_list/persons_list_widget.dart';
import 'package:simple_code_lesson_2/ui/splash_screen.dart';
import 'generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.splashBackground,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: AppColors.primary,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routes: {
          'splash': (context) => const SplashScreen(),
          '/': (context) => const LoginScreen(),
          '/settings': (context) => const SettingsScreen(),
          '/persons': (context) => const PersonsListWidget(),
          '/locations': (context) => const LocationsList(),
          '/locations/details': (context) => const LocationDetails(),
          '/episodes': (context) => const EpisodesList(),
          '/episodes/details': (context) => const EpisodesDetails(),
        },
        initialRoute: 'splash',
      ),
    );
  }
}
