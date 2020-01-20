import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:vendasmobx/app/modules/pessoa_list/pessoa_list_page.dart';

main() {
  testWidgets('PessoaListPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(PessoaListPage(title: 'PessoaList')));
    final titleFinder = find.text('PessoaList');
    expect(titleFinder, findsOneWidget);
  });
}
