import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: IncreaseNum(),
  )));
}

class IncreaseNum extends StatefulWidget {
  const IncreaseNum({super.key});

  @override
  State<IncreaseNum> createState() => __IncreaseNumStateState();
}

class __IncreaseNumStateState extends State<IncreaseNum> {
  var increasn = 0;
  void increa() {
    setState(() {
      increasn += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text("$increasn",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.black)),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
            onPressed: increa,
            child: const Text(
              "increase",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ))
      ]),
    );
  }
}
