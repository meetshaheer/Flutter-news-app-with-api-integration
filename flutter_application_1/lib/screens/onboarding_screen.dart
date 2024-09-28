import 'package:flutter/material.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: const Image(
              fit: BoxFit.fitHeight,
              height: double.infinity,
              image: NetworkImage(
                  "https://mir-s3-cdn-cf.behance.net/projects/404/6d0b53202027243.Y3JvcCw4MDksNjMyLDAsMA.jpg"),
            ),
          ),
          PageView.builder(onPageChanged: (value) {
            int index = 0;
          }, itemBuilder: (context, index) {
            return Column();
          })
        ],
      ),
    );
  }
}
