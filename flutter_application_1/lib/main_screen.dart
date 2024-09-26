import 'package:flutter/material.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: EdgeInsets.only(top: 60, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 48, 48, 48),
                    radius: 9,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Bulletin News",
                    style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    width: 185,
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
            )));
  }
}
