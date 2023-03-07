import 'package:flutter/material.dart';
import 'package:flutter_routing_management/app/features/token_setup/token_setup_state_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TokenSetupView extends StatefulWidget {
  const TokenSetupView({Key? key}) : super(key: key);

  @override
  State<TokenSetupView> createState() => _TokenSetupViewState();
}

class _TokenSetupViewState extends State<TokenSetupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Token Setup View"),
      ),
      body: Column(children: [
        Consumer(builder: (ctx, ref, child) {
          return Switch(
              value: ref.watch(tokenSetupProvider),
              onChanged: (v) {
                ref.read(tokenSetupProvider.notifier).update((state) => v);
              });
        }),
        ElevatedButton(
            onPressed: () {
              //todo
            },
            child: const Text("Enter the app")),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
