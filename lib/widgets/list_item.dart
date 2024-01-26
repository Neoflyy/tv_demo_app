import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_app_demo/pages/broadcast_page.dart';
import 'package:tv_app_demo/pages/home_page/channel_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.image, required this.title, required this.list, required this.id});

  final String image;
  final String title;
  final int id;

  final List<ChannelModel> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Feedback.forTap(context);
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) {
                  return BroadcastPage(
                    list: list,
                    image: image,
                    id: id,
                  );
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
