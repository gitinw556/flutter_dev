import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/Screen/searchscreen.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Text(
            'แนะนำสถานที่ท่องเที่ยว',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22, fontFamily: 'Sriracha'),
          ),
          Spacer(),
          // TextButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //     MaterialPageRoute route =
          //         MaterialPageRoute(builder: (value) => SearchScreen());
          //     Navigator.push(context, route);
          //   },
          //   child: Text(
          //     'ดูหมวดหมู่',
          //     style: TextStyle(fontSize: 18,color: Colors.teal[900]),
          //   ),
          // )
        ],
      ),
    );
  }
}