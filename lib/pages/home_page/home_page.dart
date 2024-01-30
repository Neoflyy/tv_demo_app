import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_app_demo/app_scaffold.dart';
import 'package:tv_app_demo/constants.dart';
import 'package:tv_app_demo/pages/home_page/channel_model.dart';
import 'package:tv_app_demo/widgets/channels_list.dart';
import 'package:tv_app_demo/widgets/home_header.dart';
import 'package:tv_app_demo/widgets/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = 'home';

  @override
  Widget build(BuildContext context) {
    const String listTitle = 'General Channels';

    return const AppScaffold(
      padding: EdgeInsets.all(20),
      color: Color(0xff0f0f0f),
      hasNavBar: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(listTitle),
          ),
          _ListView(),
        ],
      ),
    );
  }
}

class _ListView extends StatelessWidget {
  const _ListView();

  @override
  Widget build(BuildContext context) {
    return ChannelsListView(
      itemBuilder: (context, index) {
        final ChannelModel item = list[index];

        return ListItem(
          id: item.id,
          title: item.title,
          image: item.image,
        );
      },
      items: list,
    );
  }
}
