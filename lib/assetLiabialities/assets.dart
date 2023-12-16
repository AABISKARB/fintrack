import 'package:flutter/material.dart';

class Asset extends StatelessWidget {
  const Asset({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Aicon(),
    );
  }
}

class Aicon extends StatefulWidget {
  const Aicon({super.key});

  @override
  State<Aicon> createState() => _AiconState();
}

class _AiconState extends State<Aicon> {
  @override
  @override
  Widget build(BuildContext context) {
    // here, Scaffold.of(context) returns null
    return Scaffold(
        //appBar: AppBar(title: const Text('Demo')),
        body: Builder(
      builder: (BuildContext context) {
        return TextButton(
          child: const Row(
            children: [
              Column(
                children: [
                  Icon(Icons.accessible_forward_sharp),
                  Text('BUTTON')
                ],
              ),
              Column(
                children: [Icon(Icons.calculate), Text('BUTTON2')],
              ),
            ],
          ),
          onPressed: () {
            Scaffold.of(context).showBottomSheet<void>(
              (BuildContext context) {
                return Container(
                  alignment: Alignment.center,
                  height: 200,
                  color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('BottomSheet'),
                        ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    ));
  }
}
