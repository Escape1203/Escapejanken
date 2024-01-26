import 'package:flutter/material.dart';
import 'package:task_1j22d157/battle.dart';

void main(){
  runApp(
    MaterialApp(
    title:"HomeScreen",
      home: HomeScreen()
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("例のジャンケンゲーム"),
        ),
        body: Center(
          child:ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GameMode();
            }));
          },
          child: Text("ジャンケンSTART!!"),
          ),
        ),
      );
  }
}
