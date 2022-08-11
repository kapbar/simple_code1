import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/datas/location.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Location;
    String dateFormat = DateFormat('EEEE dd MMMM yyyy').format(
      DateTime.parse('${arguments.created}'),
    );
    return Scaffold(
      backgroundColor: AppColors.ligtTheme,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
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
              Text('${arguments.name}'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${arguments.type} \u2022 ${arguments.dimension}'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${S.of(context).aired}: $dateFormat',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
