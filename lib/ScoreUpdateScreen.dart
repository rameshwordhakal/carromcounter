import 'package:flutter/material.dart';
import './ScoreUpdateDialog.dart';

class ScoreUpdateScreen extends StatelessWidget {
  int score_player_1 = null;
  final players;
  ScoreUpdateScreen({this.players});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Update"),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: players.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(6),
                    alignment: Alignment.center,
                    child: Text(
                      players[index],
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    alignment: Alignment.center,
                    child: Text(
                      score_player_1.toString(),
                      style: TextStyle(fontSize: 45.0),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text(
                        'Add Score',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new ScoreUpdateDialog(score: score_player_1)),
                          ),
                      color: Colors.blue,
                    ),
                    margin: EdgeInsets.only(top: 20.0),
                  )
                ],
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ),
    );
  }
}
