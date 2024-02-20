import 'package:flutter/material.dart';

void main() => runApp(const Website());

class Website extends StatelessWidget {
  const Website({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Alex Eastman")),
        body: const Center(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Thanks for visiting my website! It's a work in progress right now, but check back soon!"),
                ),
              )
            ]
          )
        )
      )
    );
  }
}