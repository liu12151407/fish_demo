import 'package:fish_demo/list/item/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'item/component.dart';
import 'state.dart';

class ListAdapter extends DynamicFlowAdapter<ListState> {
  ListAdapter()
      : super(
          pool: <String, Component<Object>>{
            ItemComponent.sName: ItemComponent(),
          },
          connector: _ListConnector(),
        );
}

class _ListConnector extends ConnOp<ListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ListState state) {
    if (state.items?.isNotEmpty == true) {
      ///不为空，把item数据转化成ItemBean的列表
      return state.items.map((ItemState data) {
        return ItemBean(ItemComponent.sName, data);
      }).toList(growable: true);
    } else {
      ///为空，返回空列表
      return <ItemBean>[];
    }
  }

  @override
  void set(ListState state, List<ItemBean> items) {
    ///把ItemBean的编号，修改到Item的state的过程
    if (items?.isNotEmpty == true) {
      state.items = List<ItemState>.from(items.map<ItemState>((ItemBean bean) {
        return bean.data;
      }));
    } else {
      state.items = <ItemState>[];
    }
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
