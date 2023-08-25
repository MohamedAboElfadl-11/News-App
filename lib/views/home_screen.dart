import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../main.dart';
import '../widgets/list_view_cards.dart';
import '../widgets/news_view_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  IconData iconLight = Icons.light_mode;

  IconData iconDark = Icons.dark_mode;

  ThemeData lightMode =
      ThemeData(brightness: Brightness.light, useMaterial3: true);
  ThemeData darkMode =
      ThemeData(brightness: Brightness.dark, useMaterial3: true);

  bool isBool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isBool ? darkMode : lightMode,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(isBool ? iconLight : iconDark),
              onPressed: () {
                setState(() {
                  isBool = !isBool;
                });
              },
            ),
          ],
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100.0,
                  child: ListViewCard(),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 28.0,
                ),
              ),
              const NewsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
