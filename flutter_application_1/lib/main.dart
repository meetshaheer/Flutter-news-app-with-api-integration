import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: newsAPI(),
    );
  }
}

class newsAPI extends StatefulWidget {
  const newsAPI({super.key});

  @override
  State<newsAPI> createState() => _newsAPIState();
}

class _newsAPIState extends State<newsAPI> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
