import 'package:flutter/material.dart';
import 'package:tv_app_demo/app_scaffold.dart';
import 'package:tv_app_demo/pages/home_page/channel_model.dart';
import 'package:tv_app_demo/widgets/channels_list.dart';

class BroadcastPage extends StatelessWidget {
  const BroadcastPage({super.key, required this.image, required this.list, required this.id});

  final String image;
  final int id;
  final List<ChannelModel> list;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff0f0f0f),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lorem',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontSize: 10, color: Color.fromARGB(150, 158, 158, 158)),
              ),
              const SizedBox(
                height: 50,
              ),
              ChannelsList(
                list: list.where((element) => element.id != id).toList(),
              )
            ],
          ),
        )
      ]),
    );
  }
}
