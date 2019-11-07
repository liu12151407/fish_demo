import 'package:fish_demo/entrance/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'grid/page.dart';
import 'list/page.dart';

/**
 * ***********************************************
 * 包路径：
 * 类描述：根Widget
 * 创建人：Liu Yinglong[PHONE：13281160095]
 * 创建时间：2019/11/7
 * 修改人：
 * 修改时间：2019/11/7
 * 修改备注：
 * ***********************************************
 */
Widget createApp() {
  final AbstractRoutes routes =
      PageRoutes(pages: <String, Page<Object, dynamic>>{
    EntrancePage.sName: EntrancePage(),
    GridPage.sName: GridPage(),
    ListPage.sName: ListPage(),
  });
  return MaterialApp(
    title: "FishDemo",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),

    ///设置默认页面
    home: routes.buildPage(EntrancePage.sName, null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext ctx) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
