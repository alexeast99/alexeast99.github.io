import 'package:flutter/material.dart';

class SharedScaffold extends StatelessWidget {
  const SharedScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alex Eastman"),
        actions: const [
          Placeholder(),
        ],
      ),
    );
  }
}

class CompactSharedScaffold extends StatelessWidget {
  const CompactSharedScaffold({super.key, required this.body});

  final Widget body;

  @override build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alex Eastman"),
      ),
      drawer: const Drawer(
        child: Placeholder()
      )
    );
  }
}