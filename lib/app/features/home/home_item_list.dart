import 'package:flutter/material.dart';
class HomeItemListView extends StatelessWidget {
  const HomeItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
             return Scaffold(
      appBar: AppBar(
        title: const Text("Home Item List"),
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: (){
          //todo
        },),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Go to Details")),
        const SizedBox(height: 20,),
      ]),
    );
  }
}