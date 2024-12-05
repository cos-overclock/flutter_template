import 'package:flutter/material.dart';

import 'package:flutter_template/application/router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
        child: FilledButton(
          onPressed: () => const DetailRoute(id: 2).go(context),
          child: const Text('Next Page'),
        ),
      ),
    );
  }
}
