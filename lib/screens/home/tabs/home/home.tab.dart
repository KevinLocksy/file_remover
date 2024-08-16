import 'package:flutter/material.dart';

class TabHome extends StatefulWidget{
  const TabHome({super.key});

  @override
  State<StatefulWidget> createState() => TabHomeState();
}

class TabHomeState extends State<TabHome>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("HOME page"),
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () async {
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}