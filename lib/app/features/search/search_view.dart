import 'package:flutter/material.dart';
class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
               return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Go to BookList")),
        const SizedBox(height: 20,),
      ]),
    );
  }
}