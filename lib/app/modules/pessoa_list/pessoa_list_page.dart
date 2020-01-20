import 'package:flutter/material.dart';

class PessoaListPage extends StatefulWidget {
  final String title;
  const PessoaListPage({Key key, this.title = "PessoaList"}) : super(key: key);

  @override
  _PessoaListPageState createState() => _PessoaListPageState();
}

class _PessoaListPageState extends State<PessoaListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[Text("Pessoa")],
      ),
    );
  }
}
