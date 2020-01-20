import 'package:mobx/mobx.dart';

part 'produto_list_controller.g.dart';

class ProdutoListController = _ProdutoListBase with _$ProdutoListController;

abstract class _ProdutoListBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
