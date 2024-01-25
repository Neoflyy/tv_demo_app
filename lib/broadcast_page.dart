import 'package:flutter/material.dart';
import 'package:tv_app_demo/app_scaffold.dart';

class BroadcastPage extends StatelessWidget {
  const BroadcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff0f0f0f),
      child: Column(children: [
        Text(
          'Whatever',
          style: TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}
