import 'package:audioplayer_tutorial/widgets/audio_player_widget.dart';
import 'package:flutter/material.dart';

class AssetsTab extends StatelessWidget {
  const AssetsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Text('Asset Audio'),
          AudioPlayerWidget(
            url: 'audio1.mp3',
            isAsset: true,
          ),
        ],
      ),
    );
  }
}