import 'package:vendasmobx/app/modules/pessoa_list/pessoa_list_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:vendasmobx/app/modules/pessoa_list/pessoa_list_page.dart';

class PessoaListModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => PessoaListController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => PessoaListPage();

  static Inject get to => Inject<PessoaListModule>.of();
}
