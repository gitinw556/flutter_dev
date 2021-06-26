import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/appscreen/Componets/listclockdata.dart';
import 'package:flutter_dev/Google/appscreen/Screen/appscreen.dart';

// class InputClock extends StatefulWidget {
//   @override
//   _InputClockState createState() => _InputClockState();
// }

class InputClockScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: Colors.lightBlue[700],
              // image: DecorationImage(
              //   image: AssetImage('assets/icons/digitalclock.png'),
              //   fit: BoxFit.fitWidth,
              // ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("ค้นหาเวลาทำการสถานที่เที่ยว",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Text("ตัวอย่างการค้นหาเวลาทำการ",
                      style: TextStyle(fontSize: 20)),
                  Text("อย่างเช่น", style: TextStyle(fontSize: 20)),
                  Text(" |  05:00 - 23:00   |  ",
                      style: TextStyle(fontSize: 20)),
                  SearchBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: IconButton(
        onPressed: () {
          showSearch(context: context, delegate: TravelItemSearch());
        },
        icon: Icon(Icons.search),
      ),
    );
  }
}

class TravelItemSearch extends SearchDelegate<TravelItem> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = query.isEmpty? loadTravelItem():
    loadTravelItem().where((p) => p.clock.startsWith(query)).toList();
    return mylist.isEmpty?Text('ไม่พบการค้นหาที่ต้องการ...',style: TextStyle(fontSize: 20),):ListView.builder(
        itemCount: mylist.length,
        itemBuilder: (context, index) {
          final TravelItem listitem = mylist[index];
          return ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: Image.asset(listitem.photo,fit: BoxFit.cover)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(listitem.name, style: TextStyle(fontSize: 20)), 
                Text(listitem.clock, style: TextStyle(color: Colors.grey[600])),
                Text(listitem.day, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          );
        });
  }
}
