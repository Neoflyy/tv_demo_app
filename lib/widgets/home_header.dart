import 'package:flutter/material.dart';
import 'package:tv_app_demo/ui_kit/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(AppImages.randomDude),
          ),
          SizedBox(
            width: 7,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Tom 😎',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Welcome back!',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 25,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.border_all,
            color: Colors.grey,
            size: 25,
          ),
        ],
      ),
    );
  }
}
