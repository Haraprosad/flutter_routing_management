import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

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
        child: Text("Second Screen"),
      ),
    );
  }
}
