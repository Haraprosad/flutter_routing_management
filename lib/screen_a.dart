import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            context.go('/');
          },
            child: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            context.go('/second');
          },
            child: Text("First Screen. Tap to go 2nd Screen")),
      ),
    );
  }
}
