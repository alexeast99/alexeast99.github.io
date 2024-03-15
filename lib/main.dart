import 'package:flutter/material.dart';

import './about.dart';
import './homepage.dart';
import './research.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MainScreen()
    )
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final _pages = const [Homepage(), About(), Research()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelStyle: TextStyle(
              fontSize: 17.0,
            ),
            tabAlignment: TabAlignment.center,
            tabs: [
              Tab(text: "Home"),
              Tab(text: "About"),
              Tab(text: "Research"),
            ],
          ),
          toolbarHeight: 0.0,
          flexibleSpace: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
              child: Text(
                "Alex Eastman",
                style: TextStyle(
                  fontSize: 25.0,
                )
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: _pages
        )
      )
    );
  }
}