import 'package:flutter/material.dart';
import './shared_scaffold.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedScaffold(
      body: Placeholder(),
    );
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