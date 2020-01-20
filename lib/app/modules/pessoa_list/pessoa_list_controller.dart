import 'package:mobx/mobx.dart';

part 'pessoa_list_controller.g.dart';

class PessoaListController = _PessoaListBase with _$PessoaListController;

abstract class _PessoaListBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
