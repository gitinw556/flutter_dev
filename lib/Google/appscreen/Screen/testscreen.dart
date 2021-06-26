// import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/appscreen/Componets/travel_model.dart';
import 'package:flutter_dev/Google/appscreen/Screen/appscreen.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
    travelData.forEach((element) {
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

//////////////   Zoom plus and minus  //////////////////////////
  // double zoomVal = 5.0;
  Widget _zoomminusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(FontAwesomeIcons.searchMinus, color: Colors.blue[900]),
        onPressed: () {
          zoomVal--;
          _minus(zoomVal);
        },
      ),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        icon: Icon(FontAwesomeIcons.searchPlus, color: Colors.blue[900]),
        onPressed: () {
          zoomVal++;
          _plus(zoomVal);
        },
      ),
    );
  }

  Future<void> _minus(double zoomVal) async {
    // final GoogleMapController controller = await controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(18.721722552349245, 98.96312918926081), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    // final GoogleMapController controller = await controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(18.721722552349245, 98.96312918926081), zoom: zoomVal)));
  }
///////////////////////////////////////////////////////////////////////////////////////////////////////

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.lightBlue[700],
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
          
          _zoomminusfunction(),
          _zoomplusfunction(),
        ],
      ),
    );
  }
}

Marker myMarker = Marker(
  markerId: MarkerId('Here'),
  position: LatLng(18.721786155200835, 98.96306134869909),
  infoWindow: InfoWindow(title: 'ตำแหน่งของฉัน'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
);
