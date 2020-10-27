import 'package:flutter/material.dart';
import 'package:flutterapp/manager/Article.dart';
import 'package:flutterapp/manager/ArticleItem.dart';

class MangerScreen extends StatefulWidget {
  MangerScreen({Key key}) : super(key: key);

  @override
  _MangerScreenState createState() => _MangerScreenState();
}

class _MangerScreenState extends State<MangerScreen> {
  List<Article> _dataList = [];

  @override
  void initState() {
    super.initState();
    getDataList();
  }

  getDataList() {
    setState(() {
      _dataList = Article.resolveDataFromJsonString("""
      {
        "list": [
          {
            "articleId": "1001",
            "articleTitle": "title1",
            "articlePic": "https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2074&q=80",
            "userName": "user1",
            "count": "246",
            "des1": "Internet",
            "des2": "Serise B",
            "des3": "> 10000 employees",
            "des4":"Hot: Product manager... more than 500 positons"
          },
          {
            "articleId": "1002",
            "articleTitle": "title2",
            "articlePic": "https://images.unsplash.com/photo-1454942901704-3c44c11b2ad1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80",
            "userName": "user2",
            "count": "247",
            "des1": "Internet",
            "des2": "Serise B",
            "des3": "> 10000 employees",
            "des4":"Hot: Product manager... more than 500 positons"
          }
        ]
      }
    """);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(
      //   title: new Text('ManagerScreen'),
      // ),
      body: new ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (context, index) {
          var model = _dataList[index];
          return ArticleItem(model);
        },
      ),
    );
  }
}
