import 'package:flutter/material.dart';
import 'package:newsapp/views/home_screen.dart';

void main (){
  runApp(NewsApp());
}


class NewsApp extends StatefulWidget {
   NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

}
