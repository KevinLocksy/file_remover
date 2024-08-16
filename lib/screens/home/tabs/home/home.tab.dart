import 'package:file_remover/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabHome extends StatefulWidget{
  const TabHome({super.key});

  @override
  State<StatefulWidget> createState() => TabHomeState();
}

class TabHomeState extends State<TabHome>{

  @override
  Widget build(BuildContext context){

    return Column(
        children: [
          _buildData(),
          _buildCleanActions(context),
          Expanded(
            child: _buildGallery()
          ),
        ],
      );
  }

  Widget _buildData(){
    return const Padding(padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("circle data 1"),
          Text("data 2"),
          Text("data 3"),
        ],
      ),
    );
  }

  Widget _buildCleanActions(BuildContext context){
    return Padding(padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: ()=>{},
            child: Text(AppLocalizations.of(context)!.homePageCleanBtn),
          ),
          TextButton(
            onPressed: ()=>{},
            child: Text(AppLocalizations.of(context)!.homePageCleanBtn)
          ),
        ],
      )
    );
  }

  Widget _buildGallery(){
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Config.nbColGallery,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
              return Container(
                margin: const EdgeInsets.all(5.0),
                child:Container(
                  height: 50,
                  color: const Color.fromARGB(255, 184, 167, 114),
                  child: Center(child: Text('Image $index')),
                ),
              );
            },
            childCount: 30,
          ), 
        )
      ],
    );
  }
}