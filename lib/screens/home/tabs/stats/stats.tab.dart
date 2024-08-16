import 'package:flutter/material.dart';

class TabStats extends StatefulWidget{
  const TabStats({super.key});

  @override
  State<StatefulWidget> createState() => TabStatsState();
}

class TabStatsState extends State<TabStats>{

  @override
  Widget build(BuildContext context){

    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Stats"),
        ],
      ),
    );
  }
}