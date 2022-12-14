import 'package:flutter/material.dart';
import 'package:flutter_routing_management/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class HomeScreenDetails extends StatefulWidget {
  const HomeScreenDetails({Key? key}) : super(key: key);

  @override
  State<HomeScreenDetails> createState() => _HomeScreenDetailsState();
}

class _HomeScreenDetailsState extends State<HomeScreenDetails> {
  int counterValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            context.go(AppRouter.root);
          },
            child: const Icon(Icons.arrow_back)),
        title: Text("Home Details"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen Details"),
            Text("Count value = $counterValue")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          counterValue++;
          });
        },
      ),
    );
  }
}
