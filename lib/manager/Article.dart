import 'dart:convert';

class Article {
  final String articleTitle;
  final String articlePic;
  final String userName;
  final String count;

  Article({this.articleTitle, this.articlePic, this.userName, this.count});

  static List<Article> resolveDataFromJsonString(String json) {
    List<Article> listModel = new List<Article>();
    List list = jsonDecode(json)['list'];
    list.forEach((element) {
      var model = new Article(
        articleTitle: element['articleTitle'],
        articlePic: element['articlePic'],
        userName: element['userName'],
        count: element['count'],
      );
      listModel.add(model);
    });
    return listModel;
  }
}
