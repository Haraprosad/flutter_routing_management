import 'package:flutter/material.dart';
import 'package:flutter_routing_management/app/features/bottom_nav/bottom_nav_state.dart';
import 'package:flutter_routing_management/routes/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(bottomNavigationStateProvider);

    return BottomNavigationBar(
        currentIndex: position,
        onTap: _onTap,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home_outlined,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.card_giftcard_rounded,
              ),
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
              ),
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              label: "Setting"),
        ]);
  }

  void _onTap(int index) {
    ref
        .read(bottomNavigationStateProvider.notifier)
        .setBottomTabPosition(index);
    switch (index) {
      case 0:
        context.go(AppRouter.loginView);
        break;
      case 1:
        context.go(AppRouter.signUpView);
        break;
      case 2:
        context.go(AppRouter.loginView);
        break;
    }
  }
}
