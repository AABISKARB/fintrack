import 'package:flutter/material.dart';

import 'main.dart';

// class income extends StatefulWidget {
//   const income({super.key});

//   @override
//   State<income> createState() => _incomeState();
// }

// class _incomeState extends State<income> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Snackbar Example'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('Snackbar opened!'),
//                   duration:
//                       Duration(seconds: 2), // Adjust the duration as needed
//                 ),
//               );
//             },
//             child: const Text('Open Snackbar'),
//           ),
//         ));
//   }
// }

class IncomePage extends StatefulWidget {
  const IncomePage({super.key});

  @override
  _IncomePageState createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  // Variables to store income data
  double salaryIncome = 0.0;
  double businessIncome = 0.0;
  double otherIncome = 0.0;

  // Controllers for text input
  TextEditingController salaryController = TextEditingController();
  TextEditingController businessController = TextEditingController();
  TextEditingController otherController = TextEditingController();

  // Function to handle adding income
  void addIncome(double amount, String category) {
    setState(() {
      // Update the corresponding income category
      if (category == 'Salary') {
        salaryIncome += amount;
      } else if (category == 'Business') {
        businessIncome += amount;
      } else if (category == 'Other') {
        otherIncome += amount;
      }
    });
  }

  // Function to handle deleting income data
  void deleteIncome(String category) {
    setState(() {
      // Reset the corresponding income category
      if (category == 'Salary') {
        salaryIncome = 0.0;
        salaryController.clear();
      } else if (category == 'Business') {
        businessIncome = 0.0;
        businessController.clear();
      } else if (category == 'Other') {
        otherIncome = 0.0;
        otherController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Income Tracker'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Add functionality to perform when the back button is pressed
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MyApp(
                    //title: title
                    ), // Pass data to the new screen if needed
              ),
            ); // Example: navigate back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildIncomeCategory('Salary', Icons.attach_money, salaryController),
            buildIncomeCategory('Business', Icons.business, businessController),
            buildIncomeCategory(
                'Other', Icons.monetization_on, otherController),
          ],
        ),
      ),
    );
  }

  Widget buildIncomeCategory(
      String category, IconData icon, TextEditingController controller) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, size: 30.0),
                Text(category, style: const TextStyle(fontSize: 18.0)),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Enter $category Income'),
                          content: TextField(
                            keyboardType: TextInputType.number,
                            controller: controller,
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                double amount =
                                    double.tryParse(controller.text) ?? 0.0;
                                addIncome(amount, category);
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Add Income'),
                ),
                ElevatedButton(
                  onPressed: () {
                    deleteIncome(category);
                  },
                  child: const Text('Delete Data'),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text('Total Income: \$${getTotalIncome(category)}'),
          ],
        ),
      ),
    );
  }

  double getTotalIncome(String category) {
    if (category == 'Salary') {
      return salaryIncome;
    } else if (category == 'Business') {
      return businessIncome;
    } else if (category == 'Other') {
      return otherIncome;
    }
    return 0.0;
  }
}

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IncomePage(),
    );
  }
}
