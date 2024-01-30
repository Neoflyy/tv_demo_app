import 'package:flutter/material.dart';
import 'package:tv_app_demo/ui_kit/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const List<IconData> icons = [
      Icons.notifications_outlined,
      Icons.grid_view_outlined,
    ];

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AppImages.linus),
          ),
          const SizedBox(width: 7),
          const _Content(),
          const Spacer(),
          ...icons.map((icon) => _Button(icon: icon)).toList()
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );
  }
}
