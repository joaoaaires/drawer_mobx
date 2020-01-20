import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:vendasmobx/app/modules/produto_list/produto_list_controller.dart';
import 'package:vendasmobx/app/modules/produto_list/produto_list_module.dart';

void main() {
  initModule(ProdutoListModule());

  ProdutoListController produtolist;

  setUp(() {
    produtolist = ProdutoListModule.to.get<ProdutoListController>();
  });

  group('ProdutoListController Test', () {
    test("First Test", () {
      expect(produtolist, isInstanceOf<ProdutoListController>());
    });

    test("Set Value", () {
      expect(produtolist.value, equals(0));
      produtolist.increment();
      expect(produtolist.value, equals(1));
    });
  });
}
