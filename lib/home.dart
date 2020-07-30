import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Sample title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: () {})
        ],
      ),
      drawer: new Drawer(),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.thumb_up),
        title: new Text("Popular")
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.update),
        title: new Text("Coming Soon")
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.star),
        title: new Text("Highest Rated")
      )
    ];
  }
}
