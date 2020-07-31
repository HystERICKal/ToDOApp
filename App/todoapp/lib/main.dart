import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Todo app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Here I removed that _incrementCounter class/function (can't remember really)

  @override
  Widget build(BuildContext context) {
   
   /////////CODE FROM https://medium.com/@uncoded_decimal/creating-bottom-navigation-tabs-using-flutter-2286681450d4
    ///This code reproduces different swipable backgrounds of different colours
    ///
    ///change 'return new Material App' to return SafeArea
    ///click on material app and click bulb icon to wrap with new widget
    ///this is to create a 'safe area' which avoid obstacles on android and IOS
    return SafeArea(
          child: new MaterialApp(
        color: Colors.yellow,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: TabBarView(
              children: [
                new Container(
                  color: Colors.yellow,
                ),
                new Container(
                  color: Colors.orange,
                ),
                new Container(
                  color: Colors.lightGreen,
                ),
                
              ],
            ),
            //change bottomNavigationBar to appbar so that menu bar can go to the top
            appBar: new TabBar(
              
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.rss_feed),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                ),
                
              ],
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.red,

              
            ),
            backgroundColor: Colors.black,
            
          ),
        ),
      ),
    );
  }
}
