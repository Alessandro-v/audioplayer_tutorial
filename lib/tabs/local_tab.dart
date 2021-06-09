import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../widgets/audio_player_widget.dart';
import 'package:path_provider/path_provider.dart';

class LocalTab extends StatelessWidget {
  const LocalTab({Key? key}) : super(key: key);

  static String _remoteUrl = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: _loadFilePath(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Text('Local Audio'),
                AudioPlayerWidget(
                  url: snapshot.data ?? "",
                  isAsset: false,
                ),
              ],
            ),
          );
        }
    );
  }

  Future<String> _loadFilePath() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/downloaded_audio.mp3');

    if (await _assetAlreadyPresent(file.path)) {
      return file.path;
    }

    final bytes = await readBytes(Uri.parse(_remoteUrl));

    await file.writeAsBytes(bytes);

    return file.path;
  }

  Future<bool> _assetAlreadyPresent(String filePath) async {
    final File file = File(filePath);
    return file.exists();
  }
}
