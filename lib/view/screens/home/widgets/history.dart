import 'package:flutter/material.dart';

import 'task_card.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TaskCard(status: Status.done),
          TaskCard(status: Status.done),
        ],
      ),
    );
  }
}
