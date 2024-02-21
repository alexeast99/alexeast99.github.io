import 'package:flutter/material.dart';
import './homepage.dart';
import './about.dart';
import './research.dart';

class LargeSharedScaffold extends StatelessWidget {
  const LargeSharedScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alex Eastman"),
        actions: const [
          NavButton(title: "Home", route: Homepage()),
          NavButton(title: "Research", route: Research()),
          NavButton(title: "About", route: About()),
        ],
        automaticallyImplyLeading: false,
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

class NavButton extends StatelessWidget {
  const NavButton({super.key, required this.title, required this.route});

  final String title;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Center(
        child: TextButton(
          child: Text(title),
          onPressed:() => Navigator.of(context).push(
            MaterialPageRoute(builder:(context) => route,)
          ),
        )
      ),
    );
  }
}