import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vendasmobx/app/modules/home/home_controller.dart';
import 'package:vendasmobx/app/modules/home/home_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller;
  List<ItemDrawer> _itensDrawer;

  @override
  void initState() {
    super.initState();
    _controller = HomeModule.to.bloc<HomeController>();
    _itensDrawer = [
      ItemDrawer("Clientes", Icons.people),
      ItemDrawer("Produtos", Icons.shopping_cart),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: getAppBar(_controller.current_page),
          drawer: getDrawer(_controller.current_page),
          body: Column(
            children: <Widget>[],
          ),
        );
      },
    );
  }

  Widget getAppBar(int currentPage) {
    return AppBar(
      title: Text(_itensDrawer[currentPage].title),
    );
  }

  Widget getDrawer(int currentPage) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("User"),
            accountEmail: Text("user@gmail.com"),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              padding: EdgeInsets.all(0.0),
              itemCount: _itensDrawer.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_itensDrawer[index].title),
                  selected: index == currentPage,
                  leading: Icon(_itensDrawer[index].icon),
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    _controller.setCurrentPage(index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ItemDrawer {
  String title;
  IconData icon;
  Widget _child;

  ItemDrawer(this.title, this.icon);

  Widget load<T>() {
    return Container();
  }
}
