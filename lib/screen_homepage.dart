import 'package:flutter/material.dart';
import 'package:flutter_routing_management/routes/app_routes.dart';
import 'package:flutter_routing_management/screen_a.dart';
import 'package:flutter_routing_management/screen_b.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentItdex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentItdex = index;
    });
  }
  List<Widget> _widgetOptions = [ScreenA(),ScreenB()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:
          _widgetOptions.elementAt(currentItdex),

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     const Text(
        //       'HomeScreen',
        //       style: TextStyle(fontSize: 30),
        //     ),
        //     InkWell(
        //       onTap: (){
        //        context.go(AppRouter.homepageDetails);
        //       },
        //         child: Text("Go to Details",style: TextStyle(
        //           color: Colors.blueGrey,
        //           fontWeight: FontWeight.bold,
        //           fontSize: 20
        //         ),)),
        //   ],
        // ),


      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItemList(),
        currentIndex: currentItdex,
        onTap: _onItemTapped,
      ),
    );
  }
}

List<BottomNavigationBarItem> bottomNavigationBarItemList(){
  return [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
  ];
}

