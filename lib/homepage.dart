import 'package:flutter/material.dart';
import './shared_scaffold.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final breakpoint = 768;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 768) {
      return const CompactHomepage();
    } else {
      return const LargeHomepage();
    }
  }
}

class CompactHomepage extends StatelessWidget {
  const CompactHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CompactSharedScaffold(
      body: Placeholder(),
    );
  }
}

class LargeHomepage extends StatelessWidget {
  const LargeHomepage({super.key});

  final breakpoint = 768;

  @override
  Widget build(BuildContext context) {
    return const SharedScaffold(
      body: Placeholder(),
    );
  }
}