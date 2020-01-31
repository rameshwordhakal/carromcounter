import 'package:flutter/material.dart';
import './ScoreUpdateDialog.dart';

class ScoreUpdateScreen extends StatefulWidget {
  final players;
  ScoreUpdateScreen({this.players});
  _ScoreUpdateScreenState createState() => _ScoreUpdateScreenState();
}

class _ScoreUpdateScreenState extends State<ScoreUpdateScreen> {
  List<int> scores = [0, 0, 0, 0];
  gotonewscreen(BuildContext context, index) async {
    var finalScore = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => new ScoreUpdateDialog(scores[index])),
    );
    setState(() {
      scores[index] = finalScore;
    });
  }

  returnMileStoneScore(int score) {
    if (score <= 83) {
      return (83 - score);
    } else {
      return (100 - score);
    }
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Confirmation Dialog'),
            content: Text('Are you sure you want to reset the score?'),
            actions: <Widget>[
              FlatButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Score Update"),
          ),
          body: Container(
            child: GridView.builder(
              itemCount: widget.players.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(6),
                        alignment: Alignment.center,
                        child: Text(
                          widget.players[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        alignment: Alignment.center,
                        child: Text(
                          scores[index].toString(),
                          style: TextStyle(fontSize: 45.0),
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          child: Text(
                            'Add Score',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          onPressed: () => this.gotonewscreen(context, index),
                          color: Colors.blue,
                        ),
                        margin: EdgeInsets.only(top: 20.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        child: Text(
                          returnMileStoneScore(scores[index]).toString(),
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            ),
          ),
        ));
  }
}
