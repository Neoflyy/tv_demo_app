import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_app_demo/app_scaffold.dart';
import 'package:tv_app_demo/broadcast_page.dart';
import 'package:tv_app_demo/ui_kit/app_images.dart';

const List<ChannelModel> _list = [
  ChannelModel(
      title: 'Rustavi 2', image: AppImages.rustavi2, link: 'http://whatever'),
  ChannelModel(
      title: '1st Tv', image: AppImages.firstTv, link: 'http://whatever'),
  ChannelModel(
      title: 'Formula', image: AppImages.formula, link: 'http://whatever'),
  ChannelModel(
      title: 'Kavkasia', image: AppImages.kavkasiaTv, link: 'http://whatever'),
  ChannelModel(
      title: 'Mtavari Arkhi',
      image: AppImages.mtavariArkhi,
      link: 'http://whatever'),
  ChannelModel(
      title: 'Obieqtivi', image: AppImages.obieqtivi, link: 'http://whatever'),
  ChannelModel(
      title: 'Silk Universal',
      image: AppImages.silkUniversal,
      link: 'http://whatever'),
  ChannelModel(
      title: 'Tv Pirveli', image: AppImages.tvPireli, link: 'http://whatever'),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff0f0f0f),
      child: SizedBox(
        height: 170,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            final ChannelModel item = _list[index];
            return _ListItem(
              image: item.image,
              title: item.title,
            );
          },
        ),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
              onTap: () {
                Feedback.forTap(context);
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return const BroadcastPage();
                }));
              },
              child: Image.asset(image)),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class ChannelModel {
  const ChannelModel(
      {required this.title, required this.image, required this.link});

  final String title;
  final String image;
  final String link;
}
