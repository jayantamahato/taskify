import 'package:flutter/material.dart';

import 'task_card.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TaskCard(status: Status.wip),
          TaskCard(
            status: Status.pending,
          ),
          TaskCard(
            status: Status.pending,
          ),
          TaskCard(
            status: Status.pending,
          )
        ],
      ),
    );
  }
}
