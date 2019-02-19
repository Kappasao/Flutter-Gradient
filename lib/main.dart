import 'package:flutter/material.dart';

void main() => runApp(Grads());

//If we're working on an screen, we will have to place a Widget
class Grads extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Here we say the colour that will be on the upper side of our app
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new Scaffold(
        //And here the text that will appear
        appBar: new AppBar(
          title: new Text("Using gradient"),
        ),
        //Here is where we start developing all the core of our app
        body: new Container(
          //And here we say that we're gonna place a text and which color will have with the TextStyle option
          child: new Center(
            child: new Text("Henlo!", style: new TextStyle(color: Colors.white),
            ),
          ),
          //Finally here, we're doing the gradient that we're going to use on our app, you can touch the numbers as much as you want in order to accomplish what you feel the best
          //Same as the colour names and [density]
          decoration:  new BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink[100],Colors.red],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.8, 0.0),
              stops: [0.0, 0.9],
              tileMode: TileMode.clamp
            )
          ),
        ),
        ),
    );
  }
}