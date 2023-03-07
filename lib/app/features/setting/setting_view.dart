import 'package:flutter/material.dart';
class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
              return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Go to Setting Details")),
        const SizedBox(height: 20,),
         ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Logout")),
        const SizedBox(height: 20,),
      ]),
    );
  }
}