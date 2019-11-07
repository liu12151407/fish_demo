import 'package:fish_demo/grid/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action; //注意1
import 'action.dart';
import 'state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
    EntranceAction.openGrid: _onOpenGrid,
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {}

///跳转方法实现
void _onOpenGrid(Action action, Context<EntranceState> ctx) {
  Navigator.of(ctx.context).pushNamed(GridPage.sName, arguments: null);
}
