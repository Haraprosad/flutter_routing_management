import 'package:flutter/cupertino.dart';
import 'package:flutter_routing_management/homescreen_details.dart';
import 'package:flutter_routing_management/main.dart';
import 'package:flutter_routing_management/screen_a.dart';
import 'package:flutter_routing_management/screen_b.dart';
import 'package:flutter_routing_management/screen_c.dart';
import 'package:go_router/go_router.dart';

import '../screen_homepage.dart';

abstract class AppRouter{
  //route paths name
  static const _root = '/';
  static const _firstPage = '/first-page';
  static const _secondPage = '/second-page';
  static const _thirdPage = '/third-page';
  static const _homepageDetails = '/homepage-details';

  //route name with param
  static firstPageChildWithParams([String? id]) => '/first-page/${id ?? ':id'}';

  //private static method
  static Widget _homePageRouteBuilder(BuildContext context,GoRouterState state)=>const MyHomePage(title: 'Hi',);
  static Widget _homePageDetailsRouteBuilder(BuildContext context,GoRouterState state)=>const HomeScreenDetails();
  static Widget _screenARouteBuilder(BuildContext context,GoRouterState state)=>const ScreenA();
  static Widget _screenBRouteBuilder(BuildContext context,GoRouterState state)=>const ScreenB();
  static Widget _screenCRouteBuilder(BuildContext context,GoRouterState state)=>const ScreenC();


  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: _root,
        builder: _homePageRouteBuilder
      ),
      GoRoute(path: _homepageDetails,
          builder: _homePageDetailsRouteBuilder
      ),
      GoRoute(path: _firstPage,
          builder: _screenARouteBuilder
      ),
      GoRoute(path: _secondPage,
          builder: _screenBRouteBuilder
      ),
      GoRoute(path: _thirdPage,
          builder: _screenCRouteBuilder
      ),

    ]
  );

  //getter for route path
  static get root =>_root;
  static get firstPage =>_firstPage;
  static get secondPage =>_secondPage;
  static get thirdPage =>_thirdPage;
  static get homepageDetails => _homepageDetails;

  //getter for router
  static GoRouter get router =>_router;
}