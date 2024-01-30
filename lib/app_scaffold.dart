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
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(36)),
          child: widget.hasNavBar ? const _AppBarContent() : const SizedBox(),
        ),
      ),
      backgroundColor: widget.color,
      body: SafeArea(child: widget.child),
    );
  }
}

class _AppBarContent extends StatefulWidget {
  const _AppBarContent();

  @override
  State<_AppBarContent> createState() => _AppBarContentState();
}

class _AppBarContentState extends State<_AppBarContent> {
  final List<IconData> _iconList = [
    Icons.home,
    Icons.search,
    Icons.star,
    Icons.person,
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 50,
      padding: EdgeInsets.zero,
      color: const Color(0xff232323),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (final (index, icon) in _iconList.indexed)
            IconButton(
              color: _isActive(index) ? Colors.red : Colors.grey,
              onPressed: () => _onPressed(index),
              icon: Icon(icon),
            )
        ],
      ),
    );
  }

  void _onPressed(int index) {
    _currentIndex = index;
    setState(() {});
  }

  bool _isActive(int index) {
    return index == _currentIndex;
  }
}
