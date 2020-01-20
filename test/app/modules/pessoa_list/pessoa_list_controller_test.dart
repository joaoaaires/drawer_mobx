import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:vendasmobx/app/modules/pessoa_list/pessoa_list_controller.dart';
import 'package:vendasmobx/app/modules/pessoa_list/pessoa_list_module.dart';

void main() {
  initModule(PessoaListModule());

  PessoaListController pessoalist;

  setUp(() {
    pessoalist = PessoaListModule.to.get<PessoaListController>();
  });

  group('PessoaListController Test', () {
    test("First Test", () {
      expect(pessoalist, isInstanceOf<PessoaListController>());
    });

    test("Set Value", () {
      expect(pessoalist.value, equals(0));
      pessoalist.increment();
      expect(pessoalist.value, equals(1));
    });
  });
}
