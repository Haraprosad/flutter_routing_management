import 'package:flutter/cupertino.dart';
<<<<<<< HEAD
import 'package:flutter_routing_management/app/features/auth/forgot_password.dart';
import 'package:flutter_routing_management/app/features/auth/login.dart';
import 'package:flutter_routing_management/app/features/auth/signup.dart';
import 'package:flutter_routing_management/app/features/home/home.dart';
import 'package:flutter_routing_management/app/features/home/home_cart.dart';
import 'package:flutter_routing_management/app/features/home/home_item_details.dart';
import 'package:flutter_routing_management/app/features/home/home_item_list.dart';
import 'package:flutter_routing_management/app/features/search/book_list_view.dart';
import 'package:flutter_routing_management/app/features/search/movie_list_view.dart';
import 'package:flutter_routing_management/app/features/search/search_view.dart';
import 'package:flutter_routing_management/app/features/setting/setting_details.dart';
import 'package:flutter_routing_management/app/features/setting/setting_view.dart';
import 'package:flutter_routing_management/app/features/token_setup/token_setup_view.dart';
=======
import 'package:flutter_routing_management/homescreen_details.dart';
>>>>>>> 22dd5006c68972f1bb904930cb9109fff0d8e6f1
import 'package:flutter_routing_management/main.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return AppRouter.router;
});

import '../screen_homepage.dart';

abstract class AppRouter{

  //route paths name
  static const _root = '/';
<<<<<<< HEAD
  static const _login = '/login';
  static const _signup = '/signup';
  static const _forgotPassword = '/forgot-password';
  static const _homeView = '/home-view';
  static const _searchView = '/search-view';
  static const _settingView = '/setting-view';
  static const _homeListItemView = '/home-list-item-view';
  static const _homeItemDetailsView = '/home-item-details-view';
  static const _homeCartView = '/home-cart-view';
  static const _bookListView = '/book-list-view';
  static const _movieListView = '/movie-list-view';
  static const _settingDetailsView = '/setting-details-view';


=======
  static const _firstPage = '/first-page';
  static const _secondPage = '/second-page';
  static const _thirdPage = '/third-page';
  static const _homepageDetails = '/homepage-details';
>>>>>>> 22dd5006c68972f1bb904930cb9109fff0d8e6f1

  //route name with param
  firstPageChildWithParams([String? id]) => '/first-page/${id ?? ':id'}';

  //private static method
<<<<<<< HEAD
 static Widget _loginRouteBuilder(BuildContext context,GoRouterState state)=>const LoginView();
 static Widget _tokenSetupRouteBuilder(BuildContext context,GoRouterState state)=>const TokenSetupView();
 static Widget _signupRouteBuilder(BuildContext context,GoRouterState state)=>const SignUpView();
 static Widget _forgotPasswordRouteBuilder(BuildContext context,GoRouterState state)=>const ForgotPasswordView();
 static Widget _homeRouteBuilder(BuildContext context,GoRouterState state)=>const HomeView();
 static Widget _homeItemListRouteBuilder(BuildContext context,GoRouterState state)=>const HomeItemListView();
 //static Widget _homeItemDetailsRouteBuilder(BuildContext context,GoRouterState state)=>const HomeItemDetails();
 static Widget _homeCartRouteBuilder(BuildContext context,GoRouterState state)=>const HomeCartView();
 static Widget _searchRouteBuilder(BuildContext context,GoRouterState state)=>const SearchView();
 static Widget _bookListRouteBuilder(BuildContext context,GoRouterState state)=>const BookListView();
 static Widget _movieListRouteBuilder(BuildContext context,GoRouterState state)=>const MovieListView();
 static Widget _settingRouteBuilder(BuildContext context,GoRouterState state)=>const SettingView();
 static Widget _settingDetailsRouteBuilder(BuildContext context,GoRouterState state)=>const SettingDetailsView();
=======
  static Widget _homePageRouteBuilder(BuildContext context,GoRouterState state)=>const MyHomePage(title: 'Hi',);
  static Widget _homePageDetailsRouteBuilder(BuildContext context,GoRouterState state)=>const HomeScreenDetails();
  static Widget _screenARouteBuilder(BuildContext context,GoRouterState state)=>const ScreenA();
  static Widget _screenBRouteBuilder(BuildContext context,GoRouterState state)=>const ScreenB();
  static Widget _screenCRouteBuilder(BuildContext context,GoRouterState state)=>const ScreenC();

>>>>>>> 22dd5006c68972f1bb904930cb9109fff0d8e6f1

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: _root,
<<<<<<< HEAD
        builder: _tokenSetupRouteBuilder
=======
        builder: _homePageRouteBuilder
      ),
      GoRoute(path: _homepageDetails,
          builder: _homePageDetailsRouteBuilder
      ),
      GoRoute(path: _firstPage,
          builder: _screenARouteBuilder
>>>>>>> 22dd5006c68972f1bb904930cb9109fff0d8e6f1
      ),
      GoRoute(path: _login,
          builder: _loginRouteBuilder
      ),
      GoRoute(path: _signup,
          builder: _signupRouteBuilder
      ),
    ]
  );

  //getter for route path
  static get root =>_root;
<<<<<<< HEAD
  static get loginView =>_login;
  static get signUpView =>_signup;
  static get forgotPasswordView =>_forgotPassword;
=======
  static get firstPage =>_firstPage;
  static get secondPage =>_secondPage;
  static get thirdPage =>_thirdPage;
  static get homepageDetails => _homepageDetails;
>>>>>>> 22dd5006c68972f1bb904930cb9109fff0d8e6f1

  //getter for router
  static GoRouter get router =>_router;
}