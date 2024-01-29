import 'package:flutter/material.dart';
import 'package:tv_app_demo/pages/home_page/channel_model.dart';

class ChannelsListView extends StatelessWidget {
  const ChannelsListView({super.key, required this.items, required this.itemBuilder});

  final List<ChannelModel> items;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: items.length,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
