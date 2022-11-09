import 'package:flutter/material.dart';
import 'package:flutter_routing_management/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            context.go(AppRouter.firstPage);
          },
            child: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            context.go(AppRouter.secondPage);
          },
            child: Text("First Screen. Tap to go 2nd Screen")),
      ),
    );
  }
}
