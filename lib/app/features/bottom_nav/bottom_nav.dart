import 'package:flutter/material.dart';
import 'package:flutter_routing_management/app/features/bottom_nav/bottom_nav_widget.dart';
class BottomNavView extends StatelessWidget {
  const BottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return const Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}

