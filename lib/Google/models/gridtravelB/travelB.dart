import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/models/gridtravelB/gridtwo.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TheplaceTravelB extends StatefulWidget {
  final theP_T_name;
  final theP_T_picture1;
  final theP_T_picture2;
  final theP_T_picture3;
  final theP_T_picture4;
  final theP_T_picture5;
  final theP_T_data;
  final theP_T_clock;
  final theP_T_location;
  final theP_T_lat;
  final theP_T_lnt;

  TheplaceTravelB({
    this.theP_T_name,
    this.theP_T_picture1,
    this.theP_T_picture2,
    this.theP_T_picture3,
    this.theP_T_picture4,
    this.theP_T_picture5,
    this.theP_T_data,
    this.theP_T_clock,
    this.theP_T_location,
    this.theP_T_lat,
    this.theP_T_lnt,
  });

  @override
  _TheplaceTravelBState createState() => _TheplaceTravelBState();
}

class _TheplaceTravelBState extends State<TheplaceTravelB> {
  String firstHalf;
  String secondHalf;
  bool flag = true;

  @override
  void initState() {
    super.initState();
    if (widget.theP_T_data.length > 150) {
      firstHalf = widget.theP_T_data.substring(0, 150);
      secondHalf = widget.theP_T_data.substring(151, widget.theP_T_data.length);
    } else {
      firstHalf = widget.theP_T_data;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 350.0,
            width: double.infinity,
            child: Carousel(
          dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.grey,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.transparent,
            dotVerticalPadding: 5.0,
            autoplay: false,
            images: [
              Image.asset(
                widget.theP_T_picture1,
                fit: BoxFit.cover,
              ),
              Image.asset(
                widget.theP_T_picture2,
                fit: BoxFit.cover,
              ),
              Image.asset(
                widget.theP_T_picture3,
                fit: BoxFit.cover,
              ),
              Image.asset(
                widget.theP_T_picture4,
                fit: BoxFit.cover,
              ),
              Image.asset(
                widget.theP_T_picture5,
                fit: BoxFit.cover,
              ),
            ],
          ),
          ),
          Positioned(
            left: 30,
            top: 30 + MediaQuery.of(context).padding.top,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridTwo()));
              },
              child: ClipOval(
                child: Container(
                  height: 42,
                  width: 41,
                  decoration:
                      BoxDecoration(color: Colors.transparent, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ]),
                  child: Center(
                    child: Icon(MdiIcons.arrowLeftDropCircleOutline,
                        size: 40, color: Colors.white70),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: ListView(
              children: <Widget>[
                Text(
                  widget.theP_T_name,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Sriracha',
                      color: Colors.blue[800]),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: secondHalf.isEmpty
                      ? Text(widget.theP_T_data)
                      : RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text: flag ? firstHalf : (firstHalf + secondHalf),
                            style: TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Trirong',
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: flag
                                      ? " >> อ่านเพิ่มเติม <<"
                                      : " >> อ่านน้อยลง <<",
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      setState(() {
                                        flag = !flag;
                                      });
                                    }),
                            ],
                          ),
                        ),
                ),
                SizedBox(height: 20.0),
                Text(
                  widget.theP_T_clock,
                  style: TextStyle(
                    fontFamily: 'Trirong',
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  widget.theP_T_location,
                  style: TextStyle(
                    fontFamily: 'Trirong',
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


