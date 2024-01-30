import 'package:flutter/material.dart';
import 'package:tv_app_demo/app_scaffold.dart';
import 'package:tv_app_demo/constants.dart';
import 'package:tv_app_demo/pages/home_page/channel_model.dart';
import 'package:tv_app_demo/widgets/channels_list.dart';
import 'package:tv_app_demo/widgets/list_item.dart';

class BroadcastPage extends StatelessWidget {
  const BroadcastPage({super.key, required this.image, required this.id});

  final String image;
  final int id;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff0f0f0f),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const _Info(),
          _ListView(id: id)
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    const String title = 'Lorem';
    const String listTitle = 'Related Channels';
    const String content =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.';
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(fontSize: 10, color: Color.fromARGB(150, 158, 158, 158)),
          ),
          SizedBox(height: 50),
          Text(
            listTitle,
          ),
        ],
      ),
    );
  }
}

class _ListView extends StatelessWidget {
  const _ListView({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return ChannelsListView(
      items: list,
      itemBuilder: (context, index) {
        final ChannelModel item = list[index];

        return id == item.id
            ? Container()
            : ListItem(
                image: item.image,
                title: item.title,
                id: item.id,
              );
      },
    );
  }
}
