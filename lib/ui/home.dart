import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new ListView(
          children: <Widget>[
            Image.asset("images/bmilogo.png", height:
              90.0, width: 90.0),
            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.grey,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    controller: ()=> debugPrint("test"),
                    decoration: new InputDecoration(
                      hintText: "Your Age", icon: Icon(Icons.person),
                    ),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
