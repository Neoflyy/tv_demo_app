import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_app_demo/pages/broadcast_page.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.image, required this.title, required this.id});

  final String image;
  final String title;
  final int id;

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
                _navigateToDetails(context);
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

  void _navigateToDetails(context) {
    Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (
      BuildContext context,
    ) {
      return BroadcastPage(
        image: image,
        id: id,
      );
    }), ModalRoute.withName('/'));
  }
}
