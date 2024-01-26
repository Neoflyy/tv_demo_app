import 'package:flutter/material.dart';
import 'package:tv_app_demo/ui_kit/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(AppImages.randomDude),
          ),
          const SizedBox(
            width: 7,
          ),
          const Column(
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
          const Spacer(),
          InkWell(
            customBorder: const CircleBorder(),
            splashColor: const Color.fromARGB(131, 158, 158, 158),
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(1),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
              ),
            ),
          ),
          InkWell(
            customBorder: const CircleBorder(),
            splashColor: const Color.fromARGB(131, 158, 158, 158),
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(1),
              child: Icon(
                Icons.grid_view_outlined,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
