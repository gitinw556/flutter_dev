import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/Componets/triplist.dart';
import 'package:flutter_dev/Facebook/appscreen/Screen/appscreen.dart';

class TripScreen extends StatelessWidget {
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
        title: Text('       Chiang Mai Travel', style: TextStyle(fontFamily: 'FredokaOne',fontSize: 25, color: Colors.white ))
      ),
    body: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'สำหรับสถานที่ท่องเที่ยวในจังหวัดเชียงใหม่ก็จะมีมากมายหลายที่ เราจึงคัดสรรสถานที่ท่องเที่ยวที่น่าสนใจ เพื่อจัดทริปท่องเที่ยวที่ดีที่สุดให้กับคุณได้สัมผัส ดังนี้',
          style: TextStyle(fontSize: 20,fontFamily: 'Sriracha'),),
        ),
        Divider(color: Colors.black),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'ทริปที่ 1 ',
            style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
        MyList1(),
        Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 290,
                height: 50,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: (){
                    Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => DataTrip1());
            Navigator.push(context, route);
            },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text(
                    'ข้อมูลแนะนำในทริปเที่ยว ที่ 1',
                    style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Trirong'),
                  ),
                ),
              )
            ],
          ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'ทริปที่ 2 ',
            style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
        MyList2(),
       Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 290,
                height: 50,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: (){
                    Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => DataTrip2());
            Navigator.push(context, route);
                  },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text(
                    'ข้อมูลแนะนำในทริปเที่ยว ที่ 2',
                    style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Trirong'),
                  ),
                ),
              ),
            ], 
          ),
          Divider(),
      ],
    ), 
    );
  }
}