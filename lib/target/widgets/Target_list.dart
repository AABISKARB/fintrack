//import 'package:fintrack/features/target/views/widget/target.dart';
import 'package:flutter/material.dart';
import 'Target.dart';

class TargetsList extends StatelessWidget {
  final List<Target> targets;

  const TargetsList({super.key, required this.targets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: targets.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(targets[index].name),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Amount: ${targets[index].amount.toString()}'),
                  Text('Date: ${targets[index].date.toString()}'),
                  Text('Deadline: ${targets[index].deadline.toString()}'),
                ],
              ),
            ),
            onTap: () {
              // Handle onTap if needed
            },
          ),
        );
      },
    );
  }
}
