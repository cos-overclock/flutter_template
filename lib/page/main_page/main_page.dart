import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/application/router.dart';

import 'package:flutter_template/provider/counter_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () => const DetailRoute(id: 2).go(context),
              child: const Text('Next Page'),
            ),
            Consumer(builder: (context, ref, child) {
              final counter = ref.watch(counterProvider);
              return Text(counter.value.toString());
            }),
          ],
        ),
      ),
      floatingActionButton: const String.fromEnvironment('flavor') != 'release'
          ? FloatingActionButton(
              child: const Icon(Icons.text_snippet),
              onPressed: () => const TalkerRoute().go(context),
            )
          : null,
    );
  }
}
