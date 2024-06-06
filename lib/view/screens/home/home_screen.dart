import 'package:flutter/material.dart';

import 'widgets/appbar.dart';
import 'widgets/history.dart';
import 'widgets/today.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: homeAppBar(
            context: context,
          ),
          body: TabBarView(children: [Today(), History()])),
    );
  }
}
