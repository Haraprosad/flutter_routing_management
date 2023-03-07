import 'package:flutter/material.dart';
class BookListView extends StatelessWidget {
  const BookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
               return Scaffold(
      appBar: AppBar(
        title: const Text("Book List View"),
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: (){
          //todo
        },),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Go to MovieList")),
        const SizedBox(height: 20,),
      ]),
    );
  }
}