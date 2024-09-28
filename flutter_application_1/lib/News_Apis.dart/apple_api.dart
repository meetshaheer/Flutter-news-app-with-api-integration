import 'dart:convert';
import 'package:UKBD/Models/news_model.dart';
import 'package:http/http.dart' as http;

List<Article> appleData = [];
String placeholder = "https://knetic.org.uk/wp-content/uploads/2020/07/Pcture-Placeholder.png";
Future<List<Article>> getAppleNews() async {
  var url = Uri.parse(
      "https://newsapi.org/v2/everything?q=apple&from=2024-09-24&to=2024-09-24&sortBy=popularity&apiKey=a68ea7f819eb47d093b67111b570b654");

  var response = await http.get(url);
  var responsebody = jsonDecode(response.body);

  var filterrespose = responsebody['articles'];

  for (var eachMap in filterrespose) {
    if (eachMap['title'] != "[Removed]" && eachMap['urlToImage'] != null) {
      appleData.add(Article.fromJson(eachMap));
    }
  }

  return appleData;
}
