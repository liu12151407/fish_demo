import 'package:fish_demo/store/reducer.dart';
import 'package:fish_redux/fish_redux.dart';
import 'state.dart';

/**
 * ***********************************************
 * 包路径：store
 * 类描述：保存全局状态
 * 创建人：Liu Yinglong[PHONE：13281160095]
 * 创建时间：2019/11/7
 * 修改人：
 * 修改时间：2019/11/7
 * 修改备注：
 * ***********************************************
 */
class GlobalStore {
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store =>
      _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}
