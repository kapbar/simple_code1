import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_lesson_2/bloc/episodes/episodes_bloc.dart';
import 'package:simple_code_lesson_2/datas/episode.dart';
import 'package:simple_code_lesson_2/generated/l10n.dart';
import 'package:simple_code_lesson_2/ui/episodes_list/widgets/episodes_tile.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.data}) : super(key: key);

  final List<Episode> data;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(S.of(context).episodesListIsEmpty),
          ),
        ],
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<BlocEpisodes>(context).add(
            EventEpisodesFetch(),
          );
        },
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification) {
              if (notification.metrics.extentAfter == 0) {
                BlocProvider.of<BlocEpisodes>(context).add(
                  EventEpisodesNextPage(),
                );
              }
            }
            return false;
          },
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            itemBuilder: (context, index) => EpisodesTile(data: data[index]),
            separatorBuilder: (context, _) => const SizedBox(height: 10),
            itemCount: data.length,
          ),
        ),
      );
    }
  }
}
