import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(20),
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //左侧图标
        Container(
          padding: const EdgeInsets.only(right: 5.0),
          child: Center(
            child: Icon(
              //不同type显示不同icon
              state.type == 1 ? Icons.account_circle : Icons.account_box,
              size: 50.0,
            ),
          ),
        ),
        //右侧
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //标题部分
              Container(
                child: Text(
                  state.title,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              //内容部分
              Text(
                state.content,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
