import 'package:flutter/cupertino.dart';
import 'package:flutter_routing_management/main.dart';
import 'package:flutter_routing_management/screen_a.dart';
import 'package:flutter_routing_management/screen_b.dart';
import 'package:flutter_routing_management/screen_c.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: '/',
        builder: (BuildContext context,GoRouterState state){
        return const MyHomePage(title: "Hi boss");
        }
      ),
      GoRoute(path: '/first',
          builder: (BuildContext context,GoRouterState state){
            return const ScreenA();
          }
      ),
      GoRoute(path: '/second',
          builder: (BuildContext context,GoRouterState state){
            return const ScreenB();
          }
      ),
      GoRoute(path: '/three',
          builder: (BuildContext context,GoRouterState state){
            return const ScreenC();
          }
      ),

    ]
  );
}