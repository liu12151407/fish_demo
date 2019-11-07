import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<GridState> buildEffect() {
  return combineEffects(<Object, Effect<GridState>>{
    GridAction.action: _onAction,

    ///初始化
    Lifecycle.initState: _onLoadData,
  });
}

void _onAction(Action action, Context<GridState> ctx) {}

void _onLoadData(Action action, Context<GridState> ctx) {
  ///发送事件
  ctx.dispatch(GridActionCreator.onLoadData());
}
