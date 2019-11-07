import 'package:fish_demo/list/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/widgets.dart' hide Action; //注意1

Effect<GridState> buildEffect() {
  return combineEffects(<Object, Effect<GridState>>{
    GridAction.action: _onAction,

    ///初始化
    Lifecycle.initState: _onLoadData,
    GridAction.openList: _onOpenList,
  });
}

void _onAction(Action action, Context<GridState> ctx) {}

void _onLoadData(Action action, Context<GridState> ctx) {
  ///发送事件
  ctx.dispatch(GridActionCreator.onLoadData());
}

void _onOpenList(Action action, Context<GridState> ctx) {
  ///跳转到列表
  Navigator.of(ctx.context).pushNamed(ListPage.sName, arguments: null);
}
