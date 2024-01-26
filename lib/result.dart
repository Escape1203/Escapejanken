import 'package:flutter/material.dart';
import 'package:task_1j22d157/battle.dart';
import 'package:task_1j22d157/main.dart';

void main(){
  runApp(MaterialApp(
    title:"Win",
        home: GameMode(),
  ));
}

class WinResult extends StatelessWidget {
  final String listfromBattle;
  const WinResult({super.key,required this.listfromBattle});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ポン!!"),
      ),
      body: Column(
        children: [
        Text("$listfromBattle"),
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("次の試合へ"))
      ],
      ),


    );
  }
}




