import 'package:flutter/material.dart';
import 'main.dart';
import 'GetTrainRoute.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Check Your Train..."),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: 250.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 120.0, left: 75.0),
              child: RaisedButton(
                child: Text(
                  "Check Train Arrivals(Next 2hrs)",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return RouteList();
                  }));
                },
              ),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 20.0, left: 75.0),
              child: RaisedButton(
                child: Text(
                  "Check Train Routes",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return GetTrainRoute();
                  }));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
