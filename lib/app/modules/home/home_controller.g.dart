// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$current_pageAtom = Atom(name: '_HomeBase.current_page');

  @override
  int get current_page {
    _$current_pageAtom.context.enforceReadPolicy(_$current_pageAtom);
    _$current_pageAtom.reportObserved();
    return super.current_page;
  }

  @override
  set current_page(int value) {
    _$current_pageAtom.context.conditionallyRunInAction(() {
      super.current_page = value;
      _$current_pageAtom.reportChanged();
    }, _$current_pageAtom, name: '${_$current_pageAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void setCurrentPage(int value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setCurrentPage(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
