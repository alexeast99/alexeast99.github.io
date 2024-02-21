import 'package:flutter/material.dart';

import './about.dart';
import './homepage.dart';
import './research.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/about': (context) => const About(),
        '/research': (context) => const Research(),
      },
    )
  );
}