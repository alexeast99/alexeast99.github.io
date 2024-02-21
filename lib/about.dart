import 'package:flutter/material.dart';
import './shared_scaffold.dart';

class About extends StatelessWidget {
  const About({super.key});

  final breakpoint = 768;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 768) {
      return const CompactAbout();
    } else {
      return const LargeAbout();
    }
  }
}

class CompactAbout extends StatelessWidget {
  const CompactAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LargeAbout extends StatelessWidget {
  const LargeAbout({super.key});

  final breakpoint = 768;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}