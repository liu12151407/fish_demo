import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../model/grid_model.dart';
import 'state.dart';

Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
  Widget itemWidget(index) {
    GridModel model = state.models[index];
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
              ///展示name字段
              child: Text(
                model.name ?? "",
                style: TextStyle(color: Colors.white),
              ),
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
      children: List.generate(state.models.length, (index) {
        return itemWidget(index);
      }),
    ),
  );
}
