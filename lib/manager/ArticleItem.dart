import 'package:flutter/material.dart';
import 'package:flutterapp/manager/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article model;

  ArticleItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(5),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(model.articlePic),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        model.articleTitle,
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "|  " + model.des1,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "|  " + model.des2,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "|  " + model.des3,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              Divider(
                height: 20,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    model.des4,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.greenAccent,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
