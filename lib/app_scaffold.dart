import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {super.key,
      required this.color,
      required this.child,
      required this.padding,
      this.hasNavBar = false});

  final Color color;
  final EdgeInsets padding;
  final Widget child;
  final bool hasNavBar;

  @override
  Widget build(BuildContext context) {
    final BottomAppBar bottomAppBar = BottomAppBar(
      padding: EdgeInsets.zero,
      color: const Color(0xff232323),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.grey,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
              color: Colors.grey,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.grey,
              size: 20,
            ),
          )
        ],
      ),
    );

    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(36)),
              child: hasNavBar ? bottomAppBar : const SizedBox())),
      backgroundColor: color,
      body: SafeArea(child: child),
    );
  }
}
