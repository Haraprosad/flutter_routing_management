import 'package:flutter/material.dart';
class HomeItemDetails extends StatelessWidget {
  final int itemId;
  const HomeItemDetails({Key? key,required this.itemId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
             return Scaffold(
      appBar: AppBar(
        title: const Text("HomeItemDetails"),
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: (){
          //todo
        },),
      ),
      body: Column(children: [
        Text("ItemId is : $itemId"),
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Go to Cart")),
        const SizedBox(height: 20,),
      ]),
    );
  }
}