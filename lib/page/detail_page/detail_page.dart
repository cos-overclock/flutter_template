import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/provider/user/user_provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Detail Page')),
        body: Center(
          child: Consumer(
            builder: (context, ref, child) =>
                switch (ref.watch(userProvider(id))) {
              AsyncData(:final value) => Text(value.name),
              AsyncError(:final error) => Text(error.toString()),
              _ => const CircularProgressIndicator(),
            },
          ),
        ),
      );
}
