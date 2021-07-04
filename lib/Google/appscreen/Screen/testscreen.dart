// import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/appscreen/Componets/travel_model.dart';
import 'package:flutter_dev/Google/appscreen/Screen/appscreen.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with TravelDataMixin {
  // Completer<GoogleMapController> controller = Completer();
  // double _originLatitude = 19.02791, _originLongitude = 99.90002;
  //double _originLatitude = 18.721722552349245, _originLongitude = 98.96312918926081;
  //double _destLatitude = 19.028676351411274, _destLongitude = 99.89593326099057;
  //String googleAPIhttp = 'AIzaSyBynIHgHgRcqD2bZgIr7VQGW9fE0yUfs2s';
  //Map<MarkerId, Marker> markers = {};

  GoogleMapController controller;
  PageController pageController;
  List<Marker> allMarkers = [];
  int prevPage;
  double zoomVal = 5.0;
  ////////////////////////////////////////////
  //PolylinePoints polylinePoints = PolylinePoints();
  //List<LatLng> polylineCoordinates = [];
  //Map<PolylineId, Polyline> polylines = {};
  //////////////////////////////////////////////////////////
  void mapCreated(controller) {
    setState(() {
      controller = controller;
    });
  }

/////////////////////   ListDataTravel   ////////////////////////////////
  @override
  void initState() {
    super.initState();
    List<TravelData> travelData_new = onTimefunction();
    travelData_new.forEach((element) {
      allMarkers.add(Marker(
        markerId: MarkerId(element.name),
        draggable: false,
        infoWindow: InfoWindow(title: element.name, snippet: element.address),
        position: element.location,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ));
    });
    pageController = PageController(initialPage: 1, viewportFraction: 0.8) //;
      ..addListener(onScroll);

////////////////////////////////////////////////////////////////////////////////////////
    //   _addMarker(LatLng(_originLatitude, _originLongitude), "origin",
    //       BitmapDescriptor.defaultMarker);
    //   _addMarker(LatLng(_destLatitude, _destLongitude), "dest",
    //       BitmapDescriptor.defaultMarkerWithHue(90));
    //   _getPolyline();
  }

  // _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
  //   MarkerId markerId = MarkerId(id);
  //   Marker marker =
  //       Marker(markerId: markerId, icon: descriptor, position: position);
  //   markers[markerId] = marker;
  // }
  // _getPolyline() async{
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //       googleAPIhttp,
  //       PointLatLng(_originLatitude, _originLongitude),
  //       PointLatLng(_destLatitude, _destLongitude),
  //       travelMode: TravelMode.driving,
  //       wayPoints: [PolylineWayPoint(location: "สถาบัน EWTC")]);

  //   if (result.points.isNotEmpty) {
  //     result.points.forEach((PointLatLng point) {
  //       polylineCoordinates.add(LatLng(point.latitude, point.longitude));
  //     });
  //   }
  //   _addPolyLine();
  // }
  // _addPolyLine() {
  //   PolylineId id = PolylineId("poly");
  //   Polyline polyline = Polyline(
  //       polylineId: id, color: Colors.red, points: polylineCoordinates);
  //   polylines[id] = polyline;
  //   setState(() {});
  // }

  onTimefunction() {
    //int time_int = 16;
    int time_int = DateTime.now().hour;
    List<TravelData> new_travelData = [];

    for (var value in travelData) {
      if ((value.starttime < time_int) & (value.endtime > time_int)) {
        new_travelData.add(value);
      }
    }
    // print("hiiii");
    // print(new_travelData.toString());
    return new_travelData;
  }

//////////////////////////////////////////////////////////////////////////////
  void onScroll() {
    if (pageController.page.toInt() != prevPage) {
      prevPage = pageController.page.toInt();
      moveCamera();
    }
    //moveCamera(pageController.page.toInt() != prevPage, false);
  }

  _travelDataList(index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 0.1);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) + 125.0,
            width: Curves.easeInOut.transform(value) + 350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
        onTap: () {
          //moveCamera();
          //if (_travelDataList(1)) {}
        },
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                height: 125.0,
                width: 275.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Row(children: [
                    Container(
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          image: DecorationImage(
                              image: AssetImage(travelData[index].photo),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 5.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelData[index].name,
                          style: TextStyle(
                              fontSize: 12.5, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          travelData[index].phone,
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            travelData[index].day,
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(travelData[index].clock,
                            style: TextStyle(
                                fontSize: 12.5, fontWeight: FontWeight.bold))
                      ],
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

//////////   MoveCamera   ///////////////////////////////

  moveCamera() {
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: travelData[pageController.page.toInt()].location,
      zoom: 14.0,
      bearing: 45.0,
      tilt: 45.0,
    )));
  }

////////////////////////////////////////////////////////////
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
      appBar: AppBar(
          elevation: 4.0,
          backgroundColor: Colors.lightBlue[700],
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => DrawerRight());
                  Navigator.push(context, route);
                  //_scaffoldKey.currentState.openEndDrawer();
                },
                icon: Icon(MdiIcons.weatherPouring)),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => AppScreen());
              Navigator.push(context, route);
            },
          ),
          title: Text('      Chiang Mai Travel',
              style: TextStyle(
                  fontFamily: 'FredokaOne',
                  fontSize: 25,
                  color: Colors.white))),
      //endDrawer: DrawerRight(),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                  target: LatLng(18.721786155200835, 98.96306134869909),
                  zoom: 12.0),
              markers: Set.from(allMarkers),
              onMapCreated: mapCreated,
              //       myLocationEnabled: true,
              // tiltGesturesEnabled: true,
              // compassEnabled: true,
              // scrollGesturesEnabled: true,
              // zoomGesturesEnabled: true,
              // polylines: Set<Polyline>.of(polylines.values),
              //markers: Set<Marker>.of(markers.values),
            ),
          ),
          Positioned(
            bottom: 20.0,
            child: Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: pageController,
                itemCount: travelData.length,
                itemBuilder: (BuildContext context, int index) {
                  return _travelDataList(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Marker myMarker = Marker(
//   markerId: MarkerId('Here'),
//   position: LatLng(18.721786155200835, 98.96306134869909),
//   infoWindow: InfoWindow(title: 'ตำแหน่งของฉัน'),
//   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
// );

class DrawerRight extends StatefulWidget {
  //const DrawerRight({ Key? key }) : super(key: key);
  @override
  _DrawerRightState createState() => _DrawerRightState();
}

class _DrawerRightState extends State<DrawerRight> with TravelDataMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
          elevation: 4.0,
          backgroundColor: Colors.lightBlue[700],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => TestScreen());
              Navigator.push(context, route);
            },
          ),
          title: Text('      Check Weather',
              style: TextStyle(
                  fontFamily: 'FredokaOne',
                  fontSize: 25,
                  color: Colors.white))),
      body: ListView.builder(
        itemCount: travelData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(context, travelData[index]);
            },
            child: Card(
                child: Row(
              children: <Widget>[
                Container(
                  width: 120,
                  height: 120,
                  child:
                      Image.asset(travelData[index].photo, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        travelData[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: width,
                        child: Text(
                          travelData[index].address,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: Text(
                          travelData[index].clock,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: Text(
                          travelData[index].day,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, TravelDataMixin) {
  var now = DateTime.now();
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 530,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      TravelDataMixin.weatherphoto,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0, 1.0),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                      child: OverflowBox(
                        minWidth: 0,
                        maxWidth: MediaQuery.of(context).size.width,
                        minHeight: 0,
                        maxHeight: (MediaQuery.of(context).size.height / 2.5),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              height: double.infinity,
                              child: Card(
                                color: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 15, left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Text(
                                              TravelDataMixin.name,
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 24,
                                                fontFamily: 'Sriracha',
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Text(
                                              DateFormat()
                                                  .add_yMMMMEEEEd()
                                                  .format(DateTime.now()),
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(color: Colors.black),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.only(left: 30),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 120,
                                                height: 120,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        TravelDataMixin
                                                            .weathericon),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'เวลา ${now.hour} : ${now.minute} น.',
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Trirong',
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(right: 30),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                TravelDataMixin.weatherstate,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Trirong',
                                                  fontSize: 20,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                TravelDataMixin.weathertemp +
                                                    '\u2103',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 35,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'max ${TravelDataMixin.weathermax+'\u2103'+' / '+'min '+TravelDataMixin.weathermin+'\u2103'}',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 173),
                  Align(
                    alignment: Alignment(0.0, 1.0),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                      child: OverflowBox(
                        minWidth: 0,
                        maxWidth: MediaQuery.of(context).size.width,
                        minHeight: 0,
                        maxHeight: (MediaQuery.of(context).size.height / 7),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              height: double.infinity,
                              child: Card(
                                color: Colors.grey[50],
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 75,
                                      width: 115,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 1.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 10),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/weather/humidity.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            child: Text(
                                              TravelDataMixin.weatherhum,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Trirong',
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Container(
                                      height: 75,
                                      width: 115,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 1.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 10),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/weather/chance.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            child: Text(
                                              TravelDataMixin.weatherchance,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Trirong',
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Container(
                                      height: 75,
                                      width: 115,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 1.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 10),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/weather/wind.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            child: Text(
                                              TravelDataMixin.weatherwind,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Trirong',
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
