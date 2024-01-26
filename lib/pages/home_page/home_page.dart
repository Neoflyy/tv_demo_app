import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_app_demo/app_scaffold.dart';
import 'package:tv_app_demo/pages/home_page/channel_model.dart';
import 'package:tv_app_demo/ui_kit/app_images.dart';
import 'package:tv_app_demo/widgets/channels_list.dart';
import 'package:tv_app_demo/widgets/home_header.dart';

const List<ChannelModel> _list = [
  ChannelModel(title: 'Rustavi 2', image: AppImages.rustavi2, link: 'http://whatever', id: 1),
  ChannelModel(title: '1st Tv', image: AppImages.firstTv, link: 'http://whatever', id: 2),
  ChannelModel(title: 'Formula', image: AppImages.formula, link: 'http://whatever', id: 3),
  ChannelModel(title: 'Kavkasia', image: AppImages.kavkasiaTv, link: 'http://whatever', id: 4),
  ChannelModel(title: 'Mtavari Arkhi', image: AppImages.mtavariArkhi, link: 'http://whatever', id: 5),
  ChannelModel(title: 'Obieqtivi', image: AppImages.obieqtivi, link: 'http://whatever', id: 6),
  ChannelModel(title: 'Silk Universal', image: AppImages.silkUniversal, link: 'http://whatever', id: 7),
  ChannelModel(title: 'Tv Pirveli', image: AppImages.tvPireli, link: 'http://whatever', id: 8),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff0f0f0f),
      hasNavBar: true,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Text(
              'General Channels',
            ),
          ),
          ChannelsList(list: _list),
        ],
      ),
    );
  }
}
