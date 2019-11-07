import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      title: Text("列表页"),
      backgroundColor: state.themeColor,
    ),
    body: Container(
      child: ListView.separated(
        itemBuilder: adapter.itemBuilder,
        separatorBuilder: (ctx, index) {
          return Container(
            height: 1,
            color: Colors.grey[200],
          );
        },
        itemCount: adapter.itemCount,
      ),
    ),
  );
}
