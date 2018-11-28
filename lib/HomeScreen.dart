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

class PlayersData {
  String player1 = '';
  String player2 = '';
  String player3 = '';
  String player4 = '';
}

class NewPlayerRegistration extends StatefulWidget {
  @override
  NewPlayerRegistrationForm createState() {
    return NewPlayerRegistrationForm();
  }
}

class NewPlayerRegistrationForm extends State<NewPlayerRegistration> {
  PlayersData _data = new PlayersData();

  void gotonewscreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => new ScoreUpdateScreen(players: _data)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container
      (child: ListView(
        children: <Widget>[
          TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Rameshwor', labelText: 'Player1'),
              onChanged: (String value) {
                this._data.player1 = value;
              }),
          TextField(
              keyboardType: TextInputType.text,
              decoration:
                  InputDecoration(hintText: 'Sujan', labelText: 'Player2'),
              onChanged: (String value) {
                this._data.player2 = value;
              }),
          TextField(
              keyboardType: TextInputType.text,
              decoration:
                  InputDecoration(hintText: 'Ankur', labelText: 'Player3'),
              onChanged: (String value) {
                this._data.player3 = value;
              }),
          TextField(
              keyboardType: TextInputType.text,
              decoration:
                  InputDecoration(hintText: 'Subash', labelText: 'Player4'),
              onChanged: (String value) {
                this._data.player4 = value;
              }),
          Container(
            width: screenSize.width,
            child: RaisedButton(
              child: Text(
                'Play',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => this.gotonewscreen(),
              color: Colors.blue,
            ),
            margin: EdgeInsets.only(top: 20.0),
          )
        ],
      ),
    );
  }
}
