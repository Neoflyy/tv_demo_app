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
    return AppScaffold(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff0f0f0f),
      hasNavBar: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Text(
              'General Channels',
            ),
          ),
          ChannelsListView(
            itemBuilder: (context, index) {
              final ChannelModel item = list[index];
              return ListItem(
                image: item.image,
                title: item.title,
                id: item.id,
              );
            },
            items: list,
          ),
        ],
      ),
    );
  }
}
