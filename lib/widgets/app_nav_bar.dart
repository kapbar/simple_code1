import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_code_lesson_2/constants/app_assets.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/persons_list/persons_list_widget.dart';
import 'package:simple_code_lesson_2/ui/settings_screen.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    Key? key,
    required this.current,
  }) : super(key: key);

  final int current;

  PageRouteBuilder _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: current,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.neutral2,
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.svg.persons,
              color: current == 0 ? AppColors.primary : AppColors.neutral2,
            ),
            label: S.of(context).persons,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            label: S.of(context).settings,
          ),
        ],
        onTap: (index) {
          if (index == current) return;
          if (index == 0) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const PersonsListWidget()),
              (route) => false,
            );
          } else if (index == 1) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const SettingsScreen()),
              (route) => false,
            );
          }
        },
      ),
    );
  }
}
