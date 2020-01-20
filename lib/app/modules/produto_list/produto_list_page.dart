import 'package:flutter/material.dart';

class ProdutoListPage extends StatefulWidget {
  final String title;
  const ProdutoListPage({Key key, this.title = "ProdutoList"})
      : super(key: key);

  @override
  _ProdutoListPageState createState() => _ProdutoListPageState();
}

class _ProdutoListPageState extends State<ProdutoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
