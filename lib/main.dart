import 'package:fintrack/calculator.dart';
import 'package:fintrack/history.dart';
import 'package:flutter/material.dart';
import 'accounts1.dart';
import 'assetsliabialities.dart';
import 'income.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.brown.shade500,
        title: const Text('Financial Dashboard'),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
      ),
      body: Center(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(6.0),
              child: SizedBox(
                height: 100,
                child: Section1(title: 'Accounts', icon: Icons.account_balance),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: SizedBox(
                height: 100,
                child: Section2(
                    title: 'Assets and Liabilities', icon: Icons.attach_money),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: SizedBox(
                height: 100,
                child: Section3(
                    title: 'Income/Expenses', icon: Icons.monetization_on),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: SizedBox(
                height: 100,
                child:
                    Section4(title: 'Loan Calculator', icon: Icons.calculate),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: SizedBox(
                height: 100,
                child: Section5(title: 'Target', icon: Icons.flag),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: SizedBox(
                height: 100,
                child: Section6(title: 'History', icon: Icons.history),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  final String title;
  final IconData icon;

  const Section1({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.brown.shade400,
      elevation: 50.0,
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: const TextStyle(fontSize: 20)),
        iconColor: Colors.blue.shade200,
        onTap: () {
          // Navigate to a new screen when the section is tapped
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Detailscreen(
                  //title: title
                  ), // Pass data to the new screen if needed
            ),
          );
        },
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  final String title;
  final IconData icon;

  const Section2({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.brown.shade400,
      elevation: 50.0,
      child: ListTile(
          leading: Icon(icon, size: 40),
          title: Text(title, style: const TextStyle(fontSize: 20)),
          iconColor: Colors.blue.shade200,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    const Income(), // Pass data to the new screen if needed
              ),
            );
          }),
    );
  }
}

class Section3 extends StatelessWidget {
  final String title;
  final IconData icon;

  const Section3({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.brown.shade400,
      elevation: 50.0,
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: const TextStyle(fontSize: 20)),
        iconColor: Colors.blue.shade200,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  const Asset(), // Pass data to the new screen if needed
            ),
          );
          // Add navigation or actions for each section here
        },
      ),
    );
  }
}

class Section4 extends StatelessWidget {
  final String title;
  final IconData icon;

  const Section4({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.brown.shade400,
      elevation: 50.0,
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: const TextStyle(fontSize: 20)),
        iconColor: Colors.blue.shade200,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Calculator(
                  title: title), // Pass data to the new screen if needed
            ),
          );
          // Add navigation or actions for each section here
        },
      ),
    );
  }
}

class Section5 extends StatelessWidget {
  final String title;
  final IconData icon;

  const Section5({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.brown.shade400,
      elevation: 50.0,
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: const TextStyle(fontSize: 20)),
        iconColor: Colors.blue.shade200,
        onTap: () {
          // Add navigation or actions for each section here
        },
      ),
    );
  }
}

class Section6 extends StatelessWidget {
  final String title;
  final IconData icon;

  const Section6({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.brown.shade400,
      elevation: 50.0,
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: const TextStyle(fontSize: 20)),
        iconColor: Colors.blue.shade200,
        onTap: () {
          {
            // Navigate to a new screen when the section is tapped
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    const App(), // Pass data to the new screen if needed
              ),
            );
          }
          // Add navigation or actions for each section here
        },
      ),
    );
  }
}
