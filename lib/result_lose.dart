import 'package:flutter/material.dart';
import 'package:task_1j22d157/battle.dart';
import 'package:task_1j22d157/main.dart';

void main(){
  runApp(MaterialApp(
    title: "LoseResult",
    home: GameMode(),
  ));
}

class LoseResult extends StatelessWidget {
  final int listfromBattle;
  const LoseResult({super.key,required this.listfromBattle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("敗北..."),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("残念!!結果は"),
              Text("$listfromBattle",
                  style: TextStyle(
                    fontSize:150,
                  ),),
              Text("連勝でした!!"),
            ],
          ),
          // Text("結果は$listfromBattle連勝"),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return HomeScreen();
            }));
          }, child: Text("ホームに戻る"))
        ],
      ),

    );
  }
}
