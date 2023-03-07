import 'package:flutter/material.dart';
class MovieListView extends StatelessWidget {
  const MovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
              return Scaffold(
      appBar: AppBar(
        title: const Text("MovieList View"),
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: (){
          //todo
        },),
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