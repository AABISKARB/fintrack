import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePage(),
        '/second_page': (BuildContext context) => const SecondPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('HomePage'),
            // Press this button to open the SecondPage.
            ElevatedButton(
              child: const Text('Second Page >'),
              onPressed: () {
                Navigator.pushNamed(context, '/second_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool _showRectangle = false;

  Future<void> _navigateLocallyToShowRectangle() async {
    // This local history entry essentially represents the display of the red
    // rectangle. When this local history entry is removed, we hide the red
    // rectangle.
    setState(() => _showRectangle = true);
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: () {
      // Hide the red rectangle.
      setState(() => _showRectangle = false);
    }));
  }

  @override
  Widget build(BuildContext context) {
    final Widget localNavContent = _showRectangle
        ? Container(
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          )
        : ElevatedButton(
            onPressed: _navigateLocallyToShowRectangle,
            child: const Text('Show Rectangle'),
          );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            localNavContent,
            ElevatedButton(
              child: const Text('< Back'),
              onPressed: () {
                // Pop a route. If this is pressed while the red rectangle is
                // visible then it will pop our local history entry, which
                // will hide the red rectangle. Otherwise, the SecondPage will
                // navigate back to the HomePage.
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
