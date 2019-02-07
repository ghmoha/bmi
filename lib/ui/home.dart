import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double bmi = 0;



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
            Image.asset("images/bmilogo.png", height: 90.0, width: 90.0),
            new Container(
              height: 200.0,
              width: 380.0,
              color: Colors.grey,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: new InputDecoration(
                      hintText: "Your Age",
                      icon: Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    controller: _heightController,
                    decoration: new InputDecoration(
                      hintText: "Height in Feet",
                      icon: Icon(Icons.assessment),
                    ),
                  ),
                  new TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    controller: _weightController,
                    decoration: new InputDecoration(
                      hintText: "Weight in lb",
                      icon: Icon(Icons.menu),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10.5)),
                  new Center(
                    child: new Row(
                      children: <Widget>[

                        new Container(
                          margin: const EdgeInsets.only(left: 150.0),
                          child: new RaisedButton(
                            onPressed: showBMI,
                            color: Colors.pinkAccent,
                            child: new Text(
                              "BMI",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 18.8)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            new Padding(padding: EdgeInsets.all(5.5)),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Your BMI: $bmi",
                  style: new TextStyle(
                      color:Colors.blueAccent,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),),
                new Text("OverWeight",
                  style: new TextStyle(
                      color:Colors.red,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),),


              ],
            ),
          ],
        ),
      ),
    );
  }
  void showBMI(){
    setState(() {
      bmi = ((double.parse(_weightController.text)) / ((double.parse(_heightController.text)) * (double.parse(_heightController.text))) * 703) ;
    });

  }
}
