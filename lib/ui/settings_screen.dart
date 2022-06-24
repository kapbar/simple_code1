import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/constants/app_styles.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/widgets/app_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ligtTheme,
      appBar: AppBar(
        title: Text(
          S.of(context).settings,
          style: AppStyles.s20w500,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: AppColors.mainText,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${S.of(context).language}: '),
              DropdownButton<String>(
                value: Intl.getCurrentLocale(),
                items: [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text(S.of(context).english),
                  ),
                  DropdownMenuItem(
                    value: 'ru_RU',
                    child: Text(S.of(context).russian),
                  ),
                ],
                onChanged: (value) async {
                  if (value == 'ru_RU') {
                    await S.load(
                      const Locale('ru', 'RU'),
                    );
                    setState(() {});
                  } else if (value == 'en') {
                    await S.load(
                      const Locale('en'),
                    );
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const AppNavBar(current: 1),
    );
  }
}
