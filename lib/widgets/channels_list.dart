import 'package:flutter/material.dart';
import 'package:tv_app_demo/pages/home_page/channel_model.dart';
import 'package:tv_app_demo/widgets/list_item.dart';

class ChannelsList extends StatelessWidget {
  const ChannelsList({super.key, required this.list});

  final List<ChannelModel> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          final ChannelModel item = list[index];
          return ListItem(
            image: item.image,
            title: item.title,
            list: list,
            id: index + 1,
          );
        },
      ),
    );
  }
}
