import 'package:flutter/material.dart';
import 'package:tab_bar/firstpage.dart';
import 'package:tab_bar/secondpage.dart';
import 'package:tab_bar/thirdpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            indicatorColor: Color.fromARGB(255, 209, 192, 192),
            indicatorWeight: 3,
            labelColor: Color.fromARGB(255, 249, 250, 249),
            tabs: [
              Tab(
                child: Text("First Page"),
              ),
              Tab(
                child: Text("Second Page"),
              ),
              Tab(
                child: Text("ThirdPage"),
              )
            ],
          ),
        ),
        body: TabBarView(children: [FirstPage(), SecondPage(), ThirdPage()]),
      ),
    );
  }
}
