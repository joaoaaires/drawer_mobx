import 'package:vendasmobx/app/modules/produto_list/produto_list_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:vendasmobx/app/modules/produto_list/produto_list_page.dart';

class ProdutoListModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ProdutoListController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ProdutoListPage();

  static Inject get to => Inject<ProdutoListModule>.of();
}
