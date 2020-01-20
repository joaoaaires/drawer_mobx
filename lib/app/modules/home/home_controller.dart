import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  int current_page = 0;

  @action
  void setCurrentPage(int value) => current_page = value;
}
