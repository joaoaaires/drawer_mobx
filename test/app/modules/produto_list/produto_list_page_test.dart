import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:vendasmobx/app/modules/produto_list/produto_list_page.dart';

main() {
  testWidgets('ProdutoListPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ProdutoListPage(title: 'ProdutoList')));
    final titleFinder = find.text('ProdutoList');
    expect(titleFinder, findsOneWidget);
  });
}
