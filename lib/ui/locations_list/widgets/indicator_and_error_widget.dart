import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_bloc.dart';
import 'package:simple_code_lesson_2/bloc/locations/locations_state.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/widgets/app_alert_dialog.dart';

class IndicatorAndErrorWidget extends StatelessWidget {
  const IndicatorAndErrorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationsBloc, StateBlocLocations>(
      builder: (context, state) {
        final isLoading = state.maybeMap(
          data: (state) => state.isLoading,
          orElse: () => false,
        );
        return Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: isLoading
              ? const LinearProgressIndicator(
                  color: AppColors.primary,
                )
              : const SizedBox.shrink(),
        );
      },
      listener: (context, state) {
        state.mapOrNull(
          data: (state) {
            if (state.errorMessage != null) {
              showDialog(
                context: context,
                builder: (context) {
                  return AppAlertDialog(
                    title: Text(S.of(context).error),
                    content: Text(state.errorMessage!),
                  );
                },
              );
            }
          },
        );
      },
    );
  }
}