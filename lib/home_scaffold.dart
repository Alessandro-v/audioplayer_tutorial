import 'package:audioplayer_tutorial/tabs/local_tab.dart';
import 'package:audioplayer_tutorial/tabs/remote_tab.dart';
import 'package:flutter/material.dart';

import 'tabs/assets_tab.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Home'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              labelPadding: EdgeInsets.zero,
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'Assets'),
                Tab(text: 'Local'),
                Tab(text: 'Remote',),
              ],
            ),
          ),
          body: TabBarView(
              children: [
                AssetsTab(),
                LocalTab(),
                RemoteTab()
              ]
          ),
        )
    );
  }
}