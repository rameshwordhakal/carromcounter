import 'package:flutter/material.dart';

class ScoreUpdateScreen extends StatelessWidget {
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
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2.0,
              child: Container(
                // alignment: Alignment.center,
                
                child: Text(this.players.player1),
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
