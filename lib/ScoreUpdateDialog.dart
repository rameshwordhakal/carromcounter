import 'package:flutter/material.dart';
import './ScoreUpdateScreen.dart';


class ScoreUpdateDialog extends StatelessWidget {
  int score;
  ScoreUpdateDialog(this.score);
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Enter Score'),
      children: <Widget>[
        SimpleDialogOption(
          child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Add Score'),
              onChanged: (String value) {
                this.score = int.parse(value);
              }),
        ),
        SimpleDialogOption(
          child: Container(
          child: RaisedButton(
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pop(context,score ),
            color: Colors.blue,
          ),
          margin: EdgeInsets.only(top: 20.0),
        )),
      ],
    );
  }
}
