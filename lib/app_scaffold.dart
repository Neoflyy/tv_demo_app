import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    super.key,
    required this.color,
    required this.child,
    required this.padding,
    this.hasNavBar = false,
  });

  final Color color;
  final EdgeInsets padding;
  final Widget child;
  final bool hasNavBar;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    final BottomAppBar bottomAppBar = BottomAppBar(
      height: 50,
      padding: EdgeInsets.zero,
      color: const Color(0xff232323),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.home,
              color: Colors.grey,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.star,
              color: Colors.grey,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.person,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(18),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(36)),
              child: widget.hasNavBar ? bottomAppBar : const SizedBox())),
      backgroundColor: widget.color,
      body: SafeArea(child: widget.child),
    );
  }
}
