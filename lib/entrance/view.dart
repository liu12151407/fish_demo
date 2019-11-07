import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    EntranceState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("入口页面"),
    ),
    body: Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            dispatch(EntranceActionCreator.onOpenGrid());
          },
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.green,
          child: Text(
            "进入",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
