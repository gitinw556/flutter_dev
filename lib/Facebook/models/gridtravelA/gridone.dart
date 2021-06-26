//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter_dev/models/grid_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/Screen/searchscreen.dart';
import 'package:flutter_dev/Facebook/models/gridtravelA/theplaceA.dart';


class GridOne extends StatefulWidget {
  // const GridOne({ Key key }) : super(key: key);

  @override
  _GridOneState createState() => _GridOneState();
}

class _GridOneState extends State<GridOne> {
  // List<Widget> widgets = [];
  // @override
  // void initState() {
  //   super.initState();
  //   readData();
  // }

  // Future<Null> readData() async {
  //   await Firebase.initializeApp().then((value) async {
  //     print('initialize Success');
  //     await FirebaseFirestore.instance
  //         .collection('dataTravelA')
  //         .orderBy('name')
  //         .snapshots()
  //         .listen((event) {
  //       print('snapshot =${event.docs}');
  //       for (var snapshot in event.docs) {
  //         Map<String, dynamic> map = snapshot.data();
  //         print('map =$map');
  //         GridModel model = GridModel.fromMap(map);
  //         print('name =${model.name}');
  //         setState(() {
  //           widgets.add(createWidget(model));
  //         });
  //       }
  //     });
  //   });
  // }

  // Widget createWidget(GridModel model) => Container(
  //       width: 100,
  //       child: Image.network(model.photo),
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
          },
        ),
        title: Text('       Chiang Mai Travel',
            style: TextStyle(
                fontFamily: 'FredokaOne', fontSize: 25, color: Colors.white)),
    ),
    body: Container(
         // height: 320.0,
          child: ThePlaceA(),
    // Scaffold(
    //   body: widgets.length == 0
    //       ? Center(child: CircularProgressIndicator())
    //       : GridView.extent(maxCrossAxisExtent: 120, children: widgets),
      //////////////////////////////////////////////////
    ),
    );
  }
}
