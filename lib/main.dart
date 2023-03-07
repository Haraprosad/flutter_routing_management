import 'package:flutter/material.dart';
import 'package:flutter_routing_management/app/features/my_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child:MyApp()));
}

<<<<<<< HEAD
=======
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

>>>>>>> 22dd5006c68972f1bb904930cb9109fff0d8e6f1
