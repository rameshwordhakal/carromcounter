import 'package:flutter/material.dart';
import './ScoreUpdateDialog.dart';

class ScoreUpdateScreen extends StatelessWidget {
  int score1 = 0;
  final players;
  ScoreUpdateScreen({this.players});

  gotonewscreen(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => new ScoreUpdateDialog(score1)),
    );
  }

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
                      score1.toString(),
                      style: TextStyle(fontSize: 45.0),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text(
                        'Add Score',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => this.gotonewscreen(context),
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
