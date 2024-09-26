import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/news_model.dart';
import 'package:flutter_application_1/main_screen.dart';
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
      home: homeView(),
    );
  }
}

// class newsAPI extends StatefulWidget {
//   const newsAPI({super.key});

//   @override
//   State<newsAPI> createState() => _newsAPIState();
// }

// List<Article> resposeData = [];

// Future<List<Article>> getNewsAPI() async {
//   var url = Uri.parse(
//       "https://newsapi.org/v2/everything?q=apple&from=2024-09-24&to=2024-09-24&sortBy=popularity&apiKey=a68ea7f819eb47d093b67111b570b654");

//   var response = await http.get(url);
//   var responsebody = jsonDecode(response.body);

//   var filterrespose = responsebody['articles'];

//   for (var eachMap in filterrespose) {
//     resposeData.add(Article.fromJson(eachMap));
//   }

//   return resposeData;
// }

// class _newsAPIState extends State<newsAPI> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getNewsAPI();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Apple News App"),
//       ),
//       body: FutureBuilder(
//           future: getNewsAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: resposeData.length,
//                   itemBuilder: (context, index) {
//                     var data = resposeData[index];
//                     return ListTile(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => NewWidget(data: data)));
//                       },
//                       title: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             data.title ?? "",
//                             style: const TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text("Author:  ${data.author}" ?? ""),
//                           Text(data.publishedAt ?? ""),
//                         ],
//                       ),
//                       leading: Container(
//                           width: 100,
//                           child: Image(
//                             image: NetworkImage(data.urlToImage ?? "https://via.placeholder.com/150"),
//                           )),
//                     );
//                   });
//             }
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }),
//     );
//   }
// }

// class NewWidget extends StatelessWidget {
//   const NewWidget({
//     super.key,
//     required this.data,
//   });

//   final Article data;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(data.title ?? ""),
//       ),
//       body: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 300,
//             decoration: BoxDecoration(),
//             child: Image(
//               fit: BoxFit.cover,
//               image: NetworkImage(data.urlToImage ?? "https://via.placeholder.com/150"),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Text(data.description ?? ""),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Text(data.content ?? ""),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 data.author ?? "",
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0),
//             child: Align(alignment: Alignment.topLeft, child: Text(data.publishedAt ?? "")),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class separatePage extends StatelessWidget {
//   const separatePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
