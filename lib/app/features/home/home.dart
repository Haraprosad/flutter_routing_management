import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
             return Scaffold(
      appBar: AppBar(
        title: const Text("HomeView"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Go to Home ItemList")),
        const SizedBox(height: 20,),
      ]),
    );
  }
}