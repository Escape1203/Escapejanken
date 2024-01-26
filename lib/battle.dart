import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_1j22d157/main.dart';
import 'package:task_1j22d157/result.dart';
import 'package:task_1j22d157/result_lose.dart';

void main(){
  runApp(
    MaterialApp(
      title: "gamescreen",
      home:HomeScreen(),
    )
  );
}

class GameMode extends StatefulWidget {
  const GameMode({super.key});

  @override
  State<GameMode> createState() => _GameModeState();
}

int win =0;



class _GameModeState extends State<GameMode> {
  @override
  Widget build(BuildContext context) {


    void battle(int ph) {
      var hand = [
        "グー",
        "チョキ",
        "パー",
      ];
      var cpu = Random().nextInt(3);//cpuの手を選

      String winS ="$win";
      var phs =hand[ph];
      var cpus =hand[cpu];
      var winresult ="ここに勝ちか引き分けかの結果を入力します";
      if ((ph == 0 && cpu == 1) ||
          (ph == 1 && cpu == 2) ||
          (ph == 2 && cpu == 0)) {
        win++;//勝ちをカウント

        setState(() {
          winS ="$win";
        });

        Navigator.push(context, MaterialPageRoute(builder: (context){
          var winresult ="$phsと$cpusで、あなたの勝ちです。現在$winS連勝中";
              return WinResult(listfromBattle: winresult);
        }));
      }else if(ph==cpu) {
        Navigator.push(context, MaterialPageRoute(builder: (context){
              var winresult ="$cpusで引き分けでした。現在$winS連勝中";
          return WinResult(listfromBattle: winresult);
        }));
      }else{
        Navigator.push(context, MaterialPageRoute(builder: (context){
          var wnlose =win;
          win =0;
           return LoseResult(listfromBattle: wnlose);

        }));
      }

    }

    return Scaffold(
      appBar: AppBar(
        title: Text("じゃ〜んけ〜ん...?"),
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Text("ジャンケンします。好きな手を選んでください"),
              ),

              Center(
                child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: ElevatedButton(onPressed:(){
                            battle(0);
                          },
                              child: Text("グー")),
                        ),
                        Container(
                          child: ElevatedButton(onPressed: (){
                            battle(1);
                          },

                              child: Text("チョキ")),
                        ),
                        Container(
                          child: ElevatedButton(onPressed: (){
                            battle(2);
                          },
                              child: Text("パー")),
                        ),
                      ],
                    ),
                  ),
                ),
              Container(
                child:
                    Baseline(baseline: 20,
                        baselineType: TextBaseline.alphabetic,
                    child: Text("現在$win連勝中"),
                    ),
              ),
            ],
          ),
        ),

      ),

    );

  }


}



