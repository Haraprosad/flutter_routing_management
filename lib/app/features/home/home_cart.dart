import 'package:flutter/material.dart';
class HomeCartView extends StatelessWidget {
  const HomeCartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
               return Scaffold(
      appBar: AppBar(
        title: const Text("HomeCart View"),
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: (){
          //todo
        },),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Go to Settings")),
        const SizedBox(height: 20,),
      ]),
    );
  }
}