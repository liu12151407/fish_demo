import 'package:fish_demo/list/item/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ListAction.action: _onAction,
    ListAction.initList: initList,
  });
}

void _onAction(Action action, Context<ListState> ctx) {}

void initList(Action action, Context<ListState> ctx) {
  List<ItemState> mockData = List();
  for (int i = 0; i < 20; i++) {
    mockData
        .add(ItemState(type: i % 2, title: "标题$i", content: "内容..........$i"));
  }
  ctx.dispatch(ListActionCreator.initList(mockData));
}
