import 'package:fish_redux/fish_redux.dart';

/**
 * ***********************************************
 * 包路径：store
 * 类描述：
 * 创建人：Liu Yinglong[PHONE：13281160095]
 * 创建时间：2019/11/7
 * 修改人：
 * 修改时间：2019/11/7
 * 修改备注：
 * ***********************************************
 */
enum GlobalAction { changeThemeColor }

class GlobalActionCreator {
  static Action onchangeThemeColor() {
    return const Action(GlobalAction.changeThemeColor);
  }
}