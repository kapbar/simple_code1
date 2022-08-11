import 'package:flutter/material.dart';
import 'package:simple_code_lesson_2/datas/location.dart';

class LocationListItem extends StatelessWidget {
  const LocationListItem({Key? key, required this.locationList})
      : super(key: key);
  final List<Location> locationList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: locationList.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/locations/details',
              arguments: locationList[index],
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text('${locationList[index].type}'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text('${locationList[index].name}'),
                    ),
                    const Icon(Icons.chevron_right),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text('${locationList[index].dimension}'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 4.0),
    );
  }
}
