import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/constants/app_assets.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/repo/repo_settings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.ligtTheme,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.dispose();
  }

  @override
  void initState() {
    final repoSettings = context.read<RepoSettings>();
    repoSettings.init().whenComplete(
      () async {
        var defaultLocale = const Locale('ru', 'RU');
        final locale = await repoSettings.readLocale();
        if (locale == 'en') {
          defaultLocale = const Locale('en');
        }
        S.load(defaultLocale).whenComplete(
          () {
            Future.delayed(
              const Duration(seconds: 2),
            ).whenComplete(
              () {
                Navigator.pushReplacementNamed(context, '/');
              },
            );
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.images.background),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(AppAssets.images.logo),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(AppAssets.images.morty),
                      ),
                      Expanded(
                        child: Image.asset(AppAssets.images.rick),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
