import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/news_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: newsAPI(),
    );
  }
}

class newsAPI extends StatefulWidget {
  const newsAPI({super.key});

  @override
  State<newsAPI> createState() => _newsAPIState();
}

List<Article> resposeData = [];

getNewsAPI() async {
  var url = Uri.parse(
      "https://newsapi.org/v2/everything?q=apple&from=2024-09-24&to=2024-09-24&sortBy=popularity&apiKey=a68ea7f819eb47d093b67111b570b654");

  var response = await http.get(url);
  var responsebody = jsonDecode(response.body);

  var filterrespose = responsebody['articles'];
  print(filterrespose);
}

class _newsAPIState extends State<newsAPI> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNewsAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
