import 'package:fish_redux/fish_redux.dart';

import '../model/grid_model.dart';

class GridState implements Cloneable<GridState> {
  ///存放数据
  List<GridModel> models = List();

  @override
  GridState clone() {
    ///clone规则
    return GridState()..models = models;
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
