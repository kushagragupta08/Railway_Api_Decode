import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Home.dart';
import 'package:railway_api_decode/models/TrainRoute.dart';
import 'package:railway_api_decode/models/Arrivals.dart';
import 'package:railway_api_decode/models/LiveStatus.dart';
//import 'models/Route.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(
    home: Scaffold(
      body: GetTrainRoute(),
    ),
  ));
}

class GetTrainRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetTrainRouteState();
  }
}

class GetTrainRouteState extends State<GetTrainRoute> {
  Future getData() async {
    //List<Arrivals> list = [];
    String link =
        "https://api.railwayapi.com/v2/route/train/12059/apikey/jh4r3u6to2/";
    var res = await http.get(link);
    print("DATA BODY IS: ${res.body}");

    var finalData = res.body;
    return finalData;
  }

  TrainRoute parseJson(String response) {
    if (response == null) {
      return null;
    }
    // final parsed = new JsonDecoder().convert(response.toString());
    var data = json.decode(response);
    print("Our Decoded Data is :--> data");
    return TrainRoute.fromJson(data);
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
                      itemCount: trainArrivals.route.length,
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
                                          "${index + 1} -- Station Name",
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            " ${trainArrivals.route[index].station.name} ( ${trainArrivals.route[index].station.code} )"),
                                      ],
                                    ),
                                  )
                                ]),
                                TableRow(children: [
                                  TableCell(
                                      child: generateRow("Scheduled Arrival",
                                          trainArrivals.route[index].scharr))
                                ]),
                                TableRow(children: [
                                  TableCell(
                                      child: generateRow("Scheduled Departure",
                                          trainArrivals.route[index].schdep))
                                ]),
                                TableRow(children: [
                                  TableCell(
                                      child: generateRow("Distance Travelled",
                                          "${trainArrivals.route[index].distance.toString()} km"))
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        );
                      });
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
