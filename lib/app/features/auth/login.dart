import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Log in")),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("No Account,SignUp")),
         const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          //todo
        }, child: const Text("Forgot Password")),
      ]),
    );
  }
}