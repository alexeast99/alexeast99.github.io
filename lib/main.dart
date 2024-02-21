import 'package:flutter/material.dart';

import './about.dart';
import './homepage.dart';
import './research.dart';

void main() {
  runApp(const Website());
}

class Website extends StatelessWidget {
  const Website({super.key});

  final breakpoint = 768;

  @override
  Widget build(BuildContext context) {
    bool compact = MediaQuery.of(context).size.width < breakpoint;

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => compact ? 
          const CompactHomepage()
          : const Homepage(),
        '/about': (context) => compact ?
          const CompactAbout()
          : const About(),
        '/research': (context) => compact ?
          const CompactResearch()
          : const Research(),
      },
    );
  }
}
