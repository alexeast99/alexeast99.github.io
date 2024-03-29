import 'package:flutter/material.dart';
import './shared_scaffold.dart';

class Research extends StatelessWidget {
  const Research({super.key});

  final breakpoint = 768;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 768) {
      return const CompactResearch();
    } else {
      return const LargeResearch();
    }
  }
}

class CompactResearch extends StatelessWidget {
  const CompactResearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const CompactSharedScaffold(
      body: Placeholder(),
    );
  }
}

class LargeResearch extends StatelessWidget {
  const LargeResearch({super.key});

  final breakpoint = 768;

  @override
  Widget build(BuildContext context) {
    return const LargeSharedScaffold(
      body: Placeholder(),
    );
  }
}