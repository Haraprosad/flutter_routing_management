import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        leading: InkWell(onTap: () {
          //todo
        }, child: const Icon(Icons.arrow_back)),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              //todo
            },
            child: const Text("Forgot password Succeeded")),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
