import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/news_model.dart';
import 'package:flutter_application_1/News_Apis.dart/apple_api.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3),
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 48, 48, 48),
                  radius: 9,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Bulletin News",
                style: TextStyle(fontFamily: "Play", fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                width: 190,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 6.5,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  "Thursday, August 26th",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Play"),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome back,",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: "Play"),
            ),
            const Text(
              "Jennifer",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: "Play"),
            ),
            SizedBox(
              height: 250,
              child: FutureBuilder(
                future: getAppleNews(),
                builder: (context, AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: appleData.length,
                      itemBuilder: (context, index) {
                        var data = appleData[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 320,
                              color: Colors.red,
                              child: Text(data.title ?? ""),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return ListView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 320,
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            coura
          ],
        ),
      ),
    );
  }
}
