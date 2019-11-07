import 'dart:ui';

import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';

class ListState implements Cloneable<ListState>, GlobalBaseState {
  List<ItemState> items;

  @override
  ListState clone() {
    return ListState()
      ..items = items
      ..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
