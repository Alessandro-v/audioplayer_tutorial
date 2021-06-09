import 'package:flutter/material.dart';

import '../widgets/audio_player_widget.dart';

class RemoteTab extends StatelessWidget {
  const RemoteTab({Key? key}) : super(key: key);

  static String _remoteUrl = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Text('Remote Audio'),
          AudioPlayerWidget(
            url: _remoteUrl,
            isAsset: false,
          ),
        ],
      ),
    );
  }
}