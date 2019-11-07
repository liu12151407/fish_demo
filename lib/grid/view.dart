import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
  Widget itemWidget(index) {
    return Center(
      child: Card(
        color: Colors.lightBlueAccent,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(100),
          onTap: () {},
          child: Container(
            width: 200,
            height: 200,
            child: Center(
              child: Text("啦啦啦啦"),
            ),
          ),
        ),
      ),
    );
  }

  return Scaffold(
    appBar: AppBar(
      title: Text("Grid页面"),
    ),
    body: GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 1,
      padding: EdgeInsets.all(10),
      children: List.generate(10, (index) {
        return itemWidget(index);
      }),
    ),
  );
}
