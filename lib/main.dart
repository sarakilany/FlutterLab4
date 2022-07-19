import 'package:app_ex2_2/getdata.dart';
import 'package:app_ex2_2/savedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Save data',
                ),
                Tab(text: 'Show Data'),
              ],
              indicator: BoxDecoration(color: Color.fromARGB(219, 30, 65, 224)),
            ),
          ),
          body: TabBarView(
            children: [
              Savedata(),
              Showdata(),
            ],
          ),
        ),
      ),
    );
  }
}
