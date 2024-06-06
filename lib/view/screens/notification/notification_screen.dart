import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';
import 'widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(screenName: 'Notification', context: context),
      body: SingleChildScrollView(
          child: Column(
        children: [NotificationCard(), NotificationCard(), NotificationCard()],
      )),
    );
  }
}
