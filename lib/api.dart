import 'model/grid_model.dart';

/**
 * ***********************************************
 * 包路径：
 * 类描述：单例api，模拟数据获取
 * 创建人：Liu Yinglong[PHONE：13281160095]
 * 创建时间：2019/11/7
 * 修改人：
 * 修改时间：2019/11/7
 * 修改备注：
 * ***********************************************
 */
class Api {
  factory Api() {
    return _get();
  }

  static Api _instance;

  Api._internal() {
    //init Api instance
  }

  static _get() {
    if (_instance == null) {
      _instance = Api._internal();
    }
    return _instance;
  }

  List<GridModel> getGridData() {
    return [
      GridModel(name: "第一块"),
      GridModel(name: "第二块"),
      GridModel(name: "第三块"),
      GridModel(name: "第四块"),
      GridModel(name: "第五块"),
      GridModel(name: "第六块"),
      GridModel(name: "第七块"),
      GridModel(name: "第八块"),
      GridModel(name: "第九块"),
      GridModel(name: "第十块"),
    ];
  }
}
