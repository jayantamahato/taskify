import 'package:flutter/material.dart';

import 'widgets/appbar.dart';
import 'widgets/project_card.dart';
import 'widgets/search.dart';

class TimelineScreen extends StatelessWidget {
  TimelineScreen({super.key});

  final List data = [
    {
      'users': [
        {'url': 'assets/images/user1.jpg'},
        {'url': 'assets/images/user2.jpg'},
        {'url': 'assets/images/user3.jpg'},
        {'url': 'assets/images/user4.jpg'},
        {'url': 'assets/images/user5.jpg'},
      ],
      'title': 'Kudos Website',
      'status': 'Pending',
      'progress': 68
    },
    {
      'users': [
        {'url': 'assets/images/user5.jpg'},
        {'url': 'assets/images/user4.jpg'},
        {'url': 'assets/images/user3.jpg'},
        {'url': 'assets/images/user2.jpg'},
      ],
      'title': 'Araby ai',
      'status': 'Bused',
      'progress': 10
    },
    {
      'users': [
        {'url': 'assets/images/user3.jpg'},
        {'url': 'assets/images/user4.jpg'},
        {'url': 'assets/images/user2.jpg'},
        {'url': 'assets/images/user5.jpg'},
        {'url': 'assets/images/user2.jpg'},
        {'url': 'assets/images/user2.jpg'},
        {'url': 'assets/images/user2.jpg'},
        {'url': 'assets/images/user2.jpg'},
      ],
      'title': 'Kudos Website',
      'status': 'Pending',
      'progress': 50
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: projectAppBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomSearchBar(),
            ...data.map(
              (e) => ProjectCard(
                  progress: e['progress'],
                  status: e['status'],
                  title: e['title'],
                  users: e['users']),
            )
          ],
        ),
      ),
    );
  }
}
