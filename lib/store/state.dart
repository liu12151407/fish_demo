import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';

/**
 * ***********************************************
 * 包路径：store
 * 类描述：全局状态管理(主题颜色实例)
 * 创建人：Liu Yinglong[PHONE：13281160095]
 * 创建时间：2019/11/7
 * 修改人：
 * 修改时间：2019/11/7
 * 修改备注：
 * ***********************************************
 */
abstract class GlobalBaseState {
  Color get themeColor;

  set themeColor(Color color);
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState> {
  @override
  Color themeColor;

  @override
  GlobalState clone() {
    return GlobalState();
  }
}
