import 'dart:ui';

import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

import '../model/grid_model.dart';

class GridState implements Cloneable<GridState>, GlobalBaseState {
  ///存放数据
  List<GridModel> models;

  @override
  GridState clone() {
    ///clone规则
    return GridState()
      ..models = models
      ..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
