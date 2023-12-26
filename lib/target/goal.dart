//import 'package:fintrack/features/target/views/widget/Target_list.dart';
//import 'package:fintrack/features/target/views/widget/target.dart';
import 'package:fintrack/target/widgets/Target.dart';
import 'package:fintrack/target/widgets/Target_list.dart';
import 'package:flutter/material.dart';

class TargetPlanner extends StatefulWidget {
  const TargetPlanner({super.key});

  @override
  _TargetPlannerState createState() => _TargetPlannerState();
}

class _TargetPlannerState extends State<TargetPlanner> {
  List<Target> targets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Target'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PhysicalModel(
                color: Colors.greenAccent,
                child: TargetsList(targets: targets),
              ),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddGoalDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void showAddGoalDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController targetController = TextEditingController();
        TextEditingController amountController = TextEditingController();
        DateTime selectedDate = DateTime.now();
        DateTime selectedDeadline = DateTime.now();

        return AlertDialog(
          title: const Text('Add Target'),
          content: SizedBox(
            height: 250,
            child: Column(
              children: [
                TextField(
                  controller: targetController,
                  decoration:
                      const InputDecoration(labelText: 'Enter your Target'),
                ),
                TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Target Amount'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDate != null && pickedDate != selectedDate) {
                      setState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  },
                  child: const Text("Select Date"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    DateTime? pickedDeadline = await showDatePicker(
                      context: context,
                      initialDate: selectedDeadline,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDeadline != null &&
                        pickedDeadline != selectedDeadline) {
                      setState(() {
                        selectedDeadline = pickedDeadline;
                      });
                    }
                  },
                  child: const Text("Select Deadline"),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  targets.add(
                    Target(
                      name: targetController.text,
                      amount: double.parse(amountController.text),
                      date: selectedDate,
                      deadline: selectedDeadline,
                    ),
                  );
                });
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
