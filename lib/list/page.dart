import 'package:fish_demo/list/adapter.dart'; //注意1
import 'package:fish_redux/fish_redux.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ListPage extends Page<ListState, Map<String, dynamic>> {
  static final sName = "/ListPage";

  ListPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ListState>(

              ///注意2：这里使用的"加号"是 fish-redux 重载的操作符。后者是我们自定义的 adapter ，
              ///而由于我们在外层已经不需要使用 connector，所以前者传入一个 NoneConn 。
              adapter: NoneConn<ListState>() + DemoAdapter(),
              slots: <String, Dependent<ListState>>{}),
          middleware: <Middleware<ListState>>[],
        );
}
