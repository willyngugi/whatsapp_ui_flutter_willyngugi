import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavStateNotifier extends StateNotifier<int> {
  NavStateNotifier() : super(0);

  void setIndex(int newIndex) {
    state = newIndex;
  }
}

final navigationStateProvider =
    StateNotifierProvider<NavStateNotifier, int>((ref) {
  return NavStateNotifier();
});
