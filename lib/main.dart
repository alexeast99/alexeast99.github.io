import 'package:flutter/material.dart';

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
        drawer: Drawer(
          child: ListView(
            children: const [
              AppBarAction(name: "About Me"),
              AppBarAction(name: "Research"),
              AppBarAction(name: "Engineering")
            ]
          )
        ),
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

class AppBarAction extends StatelessWidget {
  const AppBarAction({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
      ),
      onPressed:() => print("Hello!"),
    );
  }
}