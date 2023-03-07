import 'package:flutter/material.dart';

class SettingDetailsView extends StatelessWidget {
  const SettingDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting Details"),
        leading: InkWell(
          onTap: () {
            //todo
          },
          child: const Icon(Icons.arrow_back), 
        ),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              //todo
            },
            child: const Text("Logout")),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
