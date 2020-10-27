import 'dart:convert';

class Article {
  final String articleTitle;
  final String articlePic;
  final String userName;
  final String count;
  final String des1;
  final String des2;
  final String des3;
  final String des4;

  Article(
      {this.articleTitle,
      this.articlePic,
      this.userName,
      this.count,
      this.des1,
      this.des2,
      this.des3,
      this.des4});

  static List<Article> resolveDataFromJsonString(String json) {
    List<Article> listModel = new List<Article>();
    List list = jsonDecode(json)['list'];
    list.forEach((element) {
      var model = new Article(
          articleTitle: element['articleTitle'],
          articlePic: element['articlePic'],
          userName: element['userName'],
          count: element['count'],
          des1: element['des1'],
          des2: element['des2'],
          des3: element['des3'],
          des4: element['des4']);
      listModel.add(model);
    });
    return listModel;
  }
}
