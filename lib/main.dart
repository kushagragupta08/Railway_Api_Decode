import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:railway_api_decode/models/Arrivals.dart';
import 'package:railway_api_decode/models/LiveStatus.dart';
//import 'models/Route.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(
    home: Scaffold(
      body: HomePage(),
    ),
  ));
}

class RouteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RouteListState();
  }
}

class RouteListState extends State<RouteList> {
  Future getData() async {
    //List<Arrivals> list = [];
    String link =
        "https://api.railwayapi.com/v2/arrivals/station/MTJ/hours/2/apikey/jh4r3u6to2/";
    var res = await http.get(link);
    print("DATA BODY IS: ${res.body}");
    var finalData = res.body;
    return finalData;
  }

  LiveStatus parseJson(String response) {
    if (response == null) {
      return null;
    }
    // final parsed = new JsonDecoder().convert(response.toString());
    var data = json.decode(response);
    print("Our Decoded Data is :--> data");
    return LiveStatus.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              var trainArrivals = parseJson(snapshot.data);
              print("Total Trains To Be Arrived:--> ${trainArrivals}");
              return snapshot.data == null
                  ? Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.blue,
                      ),
                    )
                  : ListView.builder(
                      itemCount: trainArrivals.trains.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                            ),
                            Table(
                              defaultColumnWidth: FractionColumnWidth(1.0),
                              border: TableBorder.all(color: Colors.grey),
                              children: [
                                TableRow(children: [
                                  TableCell(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "${index + 1} -- Train Name",
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            " ${trainArrivals.trains[index].name} ( ${trainArrivals.trains[index].number} )"),
                                      ],
                                    ),
                                  )
                                ]),
                                TableRow(children: [
                                  TableCell(
                                      child: generateRow("Scheduled Arrival",
                                          trainArrivals.trains[index].scharr))
                                ]),
                                TableRow(children: [
                                  TableCell(
                                      child: generateRow("Scheduled Departure",
                                          trainArrivals.trains[index].schdep))
                                ]),
                                TableRow(children: [
                                  TableCell(
                                      child: generateRow("Actual Departure",
                                          "${trainArrivals.trains[index].actdep} "))
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        );
                      },
                    );
            }),
      ),
    );
  }

  Widget generateRow(String key, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          key,
          style: TextStyle(color: Colors.blueGrey),
        ),
        SizedBox(
          width: 160.0,
        ),
        Text(value)
      ],
    );
  }
}
