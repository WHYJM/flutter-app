import 'package:flutter/material.dart';
import 'package:flutterapp/manager/ManagerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _children = [MangerScreen(), Second(), Third(), Fourth()];
  final List<String> tabTitles = ["First", "Second", "Third", "Fourth"];

  int _currentPageIndex = 0;
  String _currentTitle = "First";

  void _onPageTapped(int seletedPageIndex) {
    setState(() {
      _currentPageIndex = seletedPageIndex;
      _currentTitle = tabTitles[seletedPageIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentTitle),
      ),
      body: _children[_currentPageIndex],
      bottomNavigationBar: new BottomNavigationBar(
        onTap: _onPageTapped,
        currentIndex: _currentPageIndex,
        selectedItemColor: Colors.red, //Color(0xff123456),
        unselectedItemColor: Colors.orange,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: tabTitles[0],
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: tabTitles[1],
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: tabTitles[2],
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: tabTitles[3],
          )
        ],
      ),
    );
  }
}

class First extends StatelessWidget {
  const First({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text('First'),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text('second'),
      ),
    );
  }
}

class Third extends StatelessWidget {
  const Third({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text('Third'),
      ),
    );
  }
}

class Fourth extends StatelessWidget {
  const Fourth({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text('Fourth'),
      ),
    );
  }
}
