import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const Website());

class Website extends StatelessWidget {
  const Website({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Alex Eastman"),
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              AppBarAction(name: "About Me"),
              AppBarAction(name: "Research"),
              AppBarAction(name: "Engineering")
            ]
          )
        ),
        body: const Body(),
      )
    );
  }
}

class AppBarAction extends StatelessWidget {
  const AppBarAction({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: const ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),
          ),
        ),
        onPressed:() => print("Hello!"),
      )
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
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
    );
  }
}