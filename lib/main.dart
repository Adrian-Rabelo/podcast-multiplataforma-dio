import 'package:flutter/material.dart';

import 'app/home/home_page.dart';

void main() {
  runApp(const PodcastDio());
}

class PodcastDio extends StatelessWidget {
  const PodcastDio({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Coding Dio',
      home: HomePage(),
    );
  }
}
