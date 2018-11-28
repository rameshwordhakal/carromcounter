import 'package:flutter/material.dart';
import './ScoreUpdateScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bajra CarromBoard Counter"),
      ),
      body: NewPlayerRegistration(),
    );
  }
}

List<String> playerslist = ["player1", "player2", "player3", "player4"];

class NewPlayerRegistration extends StatefulWidget {
  @override
  NewPlayerRegistrationForm createState() {
    return NewPlayerRegistrationForm();
  }
}

class NewPlayerRegistrationForm extends State<NewPlayerRegistration> {

  void gotonewscreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => new ScoreUpdateScreen(players: playerslist)),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: 'Player1'),
                onChanged: (String value) {
                  playerslist[0] = value;
                }),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextField(
                keyboardType: TextInputType.text,
                decoration:
                    InputDecoration(labelText: 'Player2'),
                onChanged: (String value) {
                  playerslist[1] = value;
                }),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextField(
                keyboardType: TextInputType.text,
                decoration:
                    InputDecoration(labelText: 'Player3'),
                onChanged: (String value) {
                  playerslist[2] = value;
                }),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextField(
                keyboardType: TextInputType.text,
                decoration:
                    InputDecoration( labelText: 'Player4'),
                onChanged: (String value) {
                  playerslist[3] = value;
                }),
          ),
          Container(
            child: RaisedButton(
              child: Text(
                'Play',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => this.gotonewscreen(),
              color: Colors.blue,
            ),
            margin: EdgeInsets.all(30.0),
          )
        ],
      ),
    );
  }
}
