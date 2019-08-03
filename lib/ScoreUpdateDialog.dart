import 'package:flutter/material.dart';
import './ScoreUpdateScreen.dart';

class ScoreUpdateDialog extends StatelessWidget {
  int oldscore;// this thing should be final
  ScoreUpdateDialog(this.oldscore);
  int newscore = 0;

  gobacktoScreen(BuildContext context, newscore){
    int finalscore = 0;
    finalscore = this.oldscore + newscore;
    Navigator.pop(context, finalscore);
  }


  @override
  Widget build(BuildContext context) {
    
    return SimpleDialog(
      title: Text('Enter Score'),
      children: <Widget>[
        SimpleDialogOption(
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Add Score'),
            autofocus: true,
            onChanged: (String value) {
              this.newscore = int.parse(value);
            }
          ),
        ),
        SimpleDialogOption(
            child: Container(
              child: RaisedButton(
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => this.gobacktoScreen(context, this.newscore),
                color: Colors.blue,
              ),
              margin: EdgeInsets.only(top: 20.0),
        )),
      ],
    );
  }
}
