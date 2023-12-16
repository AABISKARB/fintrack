import 'package:flutter/material.dart';

class Liabialiaties extends StatelessWidget {
  const Liabialiaties({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Licon(),
    );
  }
}

class Licon extends StatefulWidget {
  const Licon({super.key});

  @override
  State<Licon> createState() => _LiconState();
}

class _LiconState extends State<Licon> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.ac_unit),
                Text("abc", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
