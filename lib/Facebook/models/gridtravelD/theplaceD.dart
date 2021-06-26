import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/models/gridtravelD/travelD.dart';


class ThePlaceD extends StatefulWidget {
  @override
  _ThePlaceDState createState() => _ThePlaceDState();
}

class _ThePlaceDState extends State<ThePlaceD> {
  var theplace_list = [
    {
      "name": "ไร่ชาลุงเดช",
      "picture1": "assets/images/travelD/D1_theplace_1.jpg",
      "picture2": "assets/images/travelD/D1_theplace_2.jpg",
      "picture3": "assets/images/travelD/D1_theplace_3.jpg",
      "picture4": "assets/images/travelD/D1_theplace_4.png",
      "picture5": "assets/images/travelD/D1_theplace_5.png",
      "data": 
          "ไร่ชาลุงเดช ตั้งอยู่ใกล้กับโครงการหลวงม่อนเงาะ อำเภอแม่แตง จังหวัดเชียงใหม่ เป็นไร่ชาของคุณลุงเดช ที่ปลูกต้นชาแบบขั้นบันได ไล่ลงไปตามแนวเขา นอกจากไร่ชาแล้ว ยังมีบ้านพัก รวมถึงร้านอาหาร ขนม เบเกอร์รี่ ชา ไว้บริการด้วย"+
          "เมนูอาหารของที่นี่เน้นใบชาเป็นส่วนประกอบสำตัญ เเละรสชาติอร่อย เช่น ใบชาทอดกรอบ ยำปลากระป๋องใบชา ไข่เจียวใบชา ฯลฯ ส่วนเครื่องดื่มแบบร้อน เช่น ชาร้อน กาแฟร้อน เครื่องดื่มเย็น ๆ มีแค่ ชาเย็นกับชามะนาวเท่านั้นที่ไร่มีบ้านพักและห้องพักหลายห้อง" +
          "บรรยากาศติดไร่ชา บ้านหลังใหญ่ และสะดวกสบาย มีห้องน้ำในตัว สามารถอาบน้ำได้ในช่วงเช้าอากาศจะเย็นสบาย และเห็นหมอกลอยฟุ้งไปทั่วทั้งไร่ชา ประมาณสัก 8 โมง ท้องฟ้าจะเริ่มเปิด ทำให้มองเห็นวิวที่สวยงามมาก",
      "clock": 
          "เวลาเปิด-ปิด: 7.30 – 18.00 เฉพาะเครื่องดื่มและอาหาร ส่วนการเข้าชมไร่ สามารถเข้าชมได้ตลอดทั้งวัน โทรศัพท์: 081-163-3765",
      "location": 
          "สถานที่ตั้ง: ไร่ชาลุงเดช ตำบลเมืองก๋าย อำเภอแม่แตง จังหวัดเชียงใหม่ 50150",
      "lat":
          "19.206192684072665",
      "lnt":
          "98.79495729473261"
    },
    {
      "name": "ไร่สตอเบอร์รี่ บ้านนอแล ดอยอ่างขาง",
      "picture1": "assets/images/travelD/D2_theplace_1.jpg",
      "picture2": "assets/images/travelD/D2_theplace_2.jpg",
      "picture3": "assets/images/travelD/D2_theplace_3.jpg",
      "picture4": "assets/images/travelD/D2_theplace_4.png",
      "picture5": "assets/images/travelD/D2_theplace_5.png",
      "data": 
          "ไร่สตรอเบอร์รี่ที่สวยงามใครมาอ่างขางไม่ควรพลาดที่นี่เลยแต่เวลาเข้าไปถ่ายภาพควรระวังผลผลิตของชาวบ้านด้วย ควรมาไร่สตรอเบอร์รี่ในตอนเช้าเพราะจะเห็นหมอกปกคลุมบริเวณนี้สวยงามมากๆ และยังสามารถเห็บสตรอเบอร์รี่สดๆจากสวนทานได้เลย"+
          "ไร่สตรอเบอร์รี่ที่ปลูกตามไหล่ขั้นเป็นขั้นบันไดลดหลั่นกันลงมา หากในยามเช้าประมาณ 7 โมงกว่า จะได้พบกับแสงแดดอุ่นพาดผ่านสายหมอกในยามเช้า ตามไหล่เขาที่อยู่เบื้องหลัง และยังได้เห็นวิถีชีวิตชาวบ้านที่มาเก็บสตรอเบอร์รี่ในยามเช้าด้วย"+
          "นอกจากนี้ยังสามารถเลือกซื้อสตรอว์เบอร์รี่ สดๆได้จากสวน รสชาติหวานกรอบอร่อย",
      "clock":
          "เวลาเปิด-ปิด: 7:00-16:00 เวลาทำการ : ทุกวัน โทรศัพท์: -",
      "location":
          "สถานที่ตั้ง: บ้านนอแล ต.แม่งอน อ.ฝาง จ.เชียงใหม่",
      "lat":
          "19.93012104369856",
      "lnt":
          "99.0349563677604"
    },
    {
      "name": "สวนพฤกษศาสตร์ สมเด็จพระนางเจ้าสิริกิต์",
      "picture1": "assets/images/travelD/D4_theplace_1.jpg",
      "picture2": "assets/images/travelD/D4_theplace_2.png",
      "picture3": "assets/images/travelD/D4_theplace_3.jpg",
      "picture4": "assets/images/travelD/D4_theplace_4.jpg",
      "picture5": "assets/images/travelD/D4_theplace_5.png",
      "data": 
          "สวนพฤกษศาสตร์สมเด็จพระนางเจ้าสิริกิติ์ ตั้งอยู่ที่อำเภอแม่ริม จังหวัดเชียงใหม่ โดยได้รับพระราชทานพระราชานุญาต จากสมเด็จพระนางเจ้าสิริกิติ์พระบรมราชินีนาถในรัชากาลที่ 9 ให้ใช้ชื่อสวนพฤกษศาสตร์แห่งนี้ว่า"+
          "“สวนพฤกษศาสตร์สมเด็จพระนางเจ้าสิริกิติ์ เป็นสถานที่อนุรักษ์และรวบรวมพรรณไม้เป็นหมวดหมู่ตามวงศ์สกุลต่างๆ โดยจัดปลูกให้สอดคล้องกับธรรมชาติมากที่สุดโดย ทั้งทางเดินลอยฟ้าบนยอดไม้ กลุ่มอาคารเรือนกระจกบนยอดเขา"+
          "ที่จะได้เพลิดเพลินไปกับการชมสวนดอกไม้และพันธุ์ไม้นานาชนิด  ถือว่าเป็นแหล่งพักผ่อนหย่อนใจและสถานที่ศึกษาธรรมชาติที่น่าลองแวะมาชมสักครั้ง",
      "clock":
          "เวลาเปิด-ปิด: 8:30 - 16:30 เวลาทำการ : ทุกวัน โทรศัพท์:  053-841-234",
      "location": 
          "สถานที่ตั้ง : 100 หมู่ 9 ตำบล แม่แรม อำเภอแม่ริม เชียงใหม่ 50180",
      "lat":
          "18.923751034832065",
      "lnt":
          "98.85852204958283"
    },
    {
      "name": "สวนกล้วยไม้สายน้ำผึ้ง",
      "picture1": "assets/images/travelD/D3_theplace_1.jpg",
      "picture2": "assets/images/travelD/D3_theplace_2.png",
      "picture3": "assets/images/travelD/D3_theplace_3.png",
      "picture4": "assets/images/travelD/D3_theplace_4.png",
      "picture5": "assets/images/travelD/D3_theplace_5.png",
      "data": 
          "สวนกล้วยไม้ สายน้ำผึ้งออร์คิด เป็นสวนกล้วยไม้ขนาดใหญ่ในเชียงใหม่ บรรยากาศร่มรื่น ตั้งอยู่ที่ อ.แม่ริม มีกล้วยไม้นานาชนิดทั้งพันธุ์พื้นเมือง และพันธุ์หายาก ออกดอกสวยงามตลอดทั้งปี เปิดให้นักท่องเที่ยวได้เดินชม, ถ่ายรูป"+ 
          "และมีประวัติความเป็นมาของกล้วยไม้ไทยและกล้วยไม้สายพันธุ์ต่างประเทศ นอกจากกล้วยไม้สวยๆ แล้ว ยังมีรถโบราณ รถยนต์คลาสสิค ของใช้เก่าๆ ของหายากให้ได้ชมเเละยังมีร้านอาหารและเครื่องดื่มไว้ให้บริการพร้อม "+
          "ส่วนด้านหน้าทางออกมีการจำหน่ายสินค้าที่ระลึกประเภทเครื่องประดับ เช่น เข็มกลัด ต่างหู สร้อย ซึ่งทำจากกล้วยไม้ ใบไม้ และแมลงต่างๆ นับว่าเป็นสถานที่ท่องเที่ยว เหมาะแก่การมาพักผ่อนที่ดีอีกที่หนึ่งในอำเภอแม่ริม",
      "clock":
          "เวลาทำการ: 8.00-17.00 เวลาทำการ: ทุกวัน โทรศัพท์: 053-297152, 053–298771-2",
      "location":
          "สถานที่ตั้ง: สวนกล้วยไม้สายน้ำผึ้งออร์คิ 61 หมู่ 6 ตำบล ริมใต้ อำเภอแม่ริม เชียงใหม่ 50180",
      "lat":
          "19.049081052916353",
      "lnt":
          "98.96296717969085"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: theplace_list.length,
        // itemCount: dataList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_theP(
              theP_name: theplace_list[index]['name'],
              theP_picture1: theplace_list[index]['picture1'],
              theP_picture2: theplace_list[index]['picture2'],
              theP_picture3: theplace_list[index]['picture3'],
              theP_picture4: theplace_list[index]['picture4'],
              theP_picture5: theplace_list[index]['picture5'],
              theP_data: theplace_list[index]['data'],
              theP_clock: theplace_list[index]['clock'],
              theP_location: theplace_list[index]['location'],
              theP_lat: theplace_list[index]['lat'],
              theP_lnt: theplace_list[index]['lnt'],);
        });
  }
}

class Single_theP extends StatelessWidget {
  final theP_name;
  final theP_picture1;
  final theP_picture2;
  final theP_picture3;
  final theP_picture4;
  final theP_picture5;
  final theP_data;
  final theP_clock;
  final theP_location;
  final theP_lat;
  final  theP_lnt;

  Single_theP({
    this.theP_name,
    this.theP_picture1,
    this.theP_picture2,
    this.theP_picture3,
    this.theP_picture4,
    this.theP_picture5,
    this.theP_data,
    this.theP_clock,
    this.theP_location,
    this.theP_lat,
    this.theP_lnt,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: theP_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TheplaceTravelD(
                      theP_T_name: theP_name,
                      theP_T_picture1: theP_picture1,
                      theP_T_picture2: theP_picture2,
                      theP_T_picture3: theP_picture3,
                      theP_T_picture4: theP_picture4,
                      theP_T_picture5: theP_picture5,
                      theP_T_data: theP_data,
                      theP_T_clock: theP_clock,
                      theP_T_location: theP_location,
                      theP_T_lat: theP_lat,
                      theP_T_lnt: theP_lnt))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        theP_name,
                        style: TextStyle(
                            fontFamily: 'Sriracha',
                            fontSize: 17,
                            color: Colors.teal[900]),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    theP_picture1,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}