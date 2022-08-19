import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/episodes/episodes_bloc.dart';
import 'package:simple_code_lesson_2/bloc/episodes/episodes_state.dart';
import 'package:simple_code_lesson_2/constants/app_colors.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/episodes_list/widgets/episodes_list_body.dart';
import 'package:simple_code_lesson_2/widgets/app_alert_dialog.dart';
import 'package:simple_code_lesson_2/widgets/app_nav_bar.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const AppNavBar(current: 2),
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(S.of(context).episodes),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: BlocBuilder<BlocEpisodes, StateBlocEpisodes>(
                        builder: (context, state) {
                          return state.map(
                            initial: (_) => const SizedBox.shrink(),
                            loading: (_) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircularProgressIndicator(),
                              ],
                            ),
                            data: (state) => Body(data: state.data),
                            error: (state) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(state.error),
                                ),
                              ],
                            ),
                          );
                        },
                        buildWhen: (previous, current) {
                          if (previous.runtimeType != current.runtimeType) {
                            return true;
                          } else {
                            final previousDataLength = previous.mapOrNull(
                              data: (state) => state.data.length,
                            );
                            final currentDataLength = current.mapOrNull(
                              data: (state) => state.data.length,
                            );
                            return previousDataLength != currentDataLength;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocConsumer<BlocEpisodes, StateBlocEpisodes>(
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
            ),
          ],
        ),
      ),
    );
  }
}


