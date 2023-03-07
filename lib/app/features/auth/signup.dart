import 'package:flutter/material.dart';
class SignUpView extends StatelessWidget {
  const SignUpView();

  @override
  Widget build(BuildContext context) {
         return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("SignUp")),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Has Account,Login")),
         const SizedBox(height: 20,),
      ]),
    );
  }
}