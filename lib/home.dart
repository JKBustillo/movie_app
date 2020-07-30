import 'package:flutter/material.dart';
import 'package:movie_app/common/HttpHandler.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  _loadJson() async {
    String data = await HttpHandler().fetchMovies();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Sample title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(child: new Material()),
            new ListTile(
              title: new Text("Movies"),
              trailing: new Icon(Icons.local_movies),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("TV"),
              trailing: new Icon(Icons.live_tv),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up), title: new Text("Popular")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.update), title: new Text("Coming Soon")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.star), title: new Text("Highest Rated"))
    ];
  }
}
