import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {

  @override
  ItemState clone() {
    return ItemState();
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
