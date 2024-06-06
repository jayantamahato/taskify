import 'package:flutter/material.dart';

import 'widgets/appbar.dart';
import 'widgets/timeline_card.dart';
import 'widgets/date_time.dart';

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
      appBar: timelineAppBar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DateAndTime(),
            ...data.map(
              (e) => TimelineCard(
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
