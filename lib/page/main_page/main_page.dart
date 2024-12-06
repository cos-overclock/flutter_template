import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template/application/router.dart';

import 'package:flutter_template/provider/user/all_users_provider.dart';
import 'package:flutter_template/api/user_api/user_api.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () =>
                  GetIt.I.get<UserApi>().createUser('User ${DateTime.now()}'),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => GetIt.I.get<UserApi>().deleteAllUsers(),
            ),
          ],
        ),
        body: Center(
          child: Consumer(
              builder: (context, ref, child) =>
                  switch (ref.watch(allUsersProvider)) {
                    AsyncData(:final value) => ListView.builder(
                        itemCount: value.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(value[index].name),
                          onTap: () =>
                              DetailRoute(id: value[index].id).go(context),
                        ),
                      ),
                    AsyncError(:final error) => Text(error.toString()),
                    _ => const CircularProgressIndicator(),
                  }),
        ),
        floatingActionButton:
            const String.fromEnvironment('flavor') != 'release'
                ? FloatingActionButton(
                    child: const Icon(Icons.text_snippet),
                    onPressed: () => const TalkerRoute().go(context),
                  )
                : null,
      );
}
