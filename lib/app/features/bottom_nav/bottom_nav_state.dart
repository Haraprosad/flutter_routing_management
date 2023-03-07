import 'package:hooks_riverpod/hooks_riverpod.dart';

final bottomNavigationStateProvider = StateNotifierProvider<BottomNavigationTabStateNotifier,int>((ref) {
   return BottomNavigationTabStateNotifier();
});


class BottomNavigationTabStateNotifier extends StateNotifier<int> {
  BottomNavigationTabStateNotifier() : super(0);

  void setBottomTabPosition(int value){
     state = value;
  }
}
