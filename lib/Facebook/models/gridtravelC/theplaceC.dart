import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/models/gridtravelC/travelC.dart';


class ThePlaceC extends StatefulWidget {
  @override
  _ThePlaceCState createState() => _ThePlaceCState();
}

class _ThePlaceCState extends State<ThePlaceC> {
  var theplace_list = [
    {
      "name": "แกรนด์แคนยอน เชียงใหม่",
      "picture1": "assets/images/travelC/C1_theplace_1.jpg",
      "picture2": "assets/images/travelC/C1_theplace_2.png",
      "picture3": "assets/images/travelC/C1_theplace_3.jpg",
      "picture4": "assets/images/travelC/C1_theplace_4.png",
      "picture5": "assets/images/travelC/C1_theplace_5.png",
      "data": 
          "ไฮไลท์ของ แกรนด์แคนยอน หางดงแกรนด์แคนยอน เชียงใหม่ ตั้งอยู่ใน ตำบลน้ำแพร่ อำเภอหางดง จังหวัดเชียงใหม่ แต่ก่อนที่นี่เป็นบ่อดินที่มีพื้นที่ประมาณ 30 ไร่ มีคันดินสูงเกือบ 15 เมตร หรือขนาดเท่ากับตึก 3 ชั้นนั่นเองให้อารมณ์คล้ายกับหน้าผาเหมือนแกรนด์แคนยอนในอเมริกา"+
          "ที่เกิดขึ้นมาจากการกัดเซาะของกระแสน้ำหางดง แกรนด์แคนยอน เชียงใหม่ นี้ เป็นพื้นที่ของเอกชน ซึ่งเจ้าของได้ขุดหน้าดินไปขาย เมื่อ 10 ปีที่แล้ว เลยทำให้เกิดเป็นแอ่งน้ำขนาดใหญ่ มีความลึกตั้งแต่ 15-20 เมตรเลย บางบ่อก็ลึกกว่า 50 เมตร โดยน้ำภายในแอ่งก็จะมีสีเขียวใสเหมือนสีของมรกต"+
          "ซึ่งบ่อน้ำเหล่านี้ก็ได้ล้อมรอบหน้าผาสูงเอาไว้ ดูแล้วสวยงดงามมากๆ นอกจากจะสามารถเดินชมถ่ายรูปกับ แกรนด์แคนยอน ได้แล้ว ก็ยังสามารถลงไปเล่นน้ำได้อีกด้วย แต่สำหรับคนที่ชอบความตื่นเต้น แนวผาดโผน เเนะนำไปกระโดดหน้าผาลงน้ำ ถือเป็นกิจกรรมอีกอย่างหนงของทนทหามพลาดเลย"+
          "แต่ใครที่ว่ายน้ำไม่แข็งหรือมีโรคประจำตัวที่เสี่ยง ไม่แนะนำให้เล่นกิจกรรมนี้ เนื่องจากน้ำจะลึกและเย็นมาก อาจจะเกิดอันตรายได้",
      "clock": 
          "เวลาเปิด-ปิด: 09.00-18.00 เวลาทำการ: ทุกวัน โทรศัพท์: 061–796-3999",
      "location": 
          "สถานที่ตั้ง: 202 หมู่ 3 หมู่บ้านแพะขวาง ตำบลน้ำแพร่ อำเภอหางดง จังหวัดเชียงใหม่",
      "lat":
          "18.696994790938167",
      "lnt":
          "98.89304369657093"
    },
    {
      "name": "จังเกิลโคสเตอร์",
      "picture1": "assets/images/travelC/C2_theplace_1.jpg",
      "picture2": "assets/images/travelC/C2_theplace_2.png",
      "picture3": "assets/images/travelC/C2_theplace_3.png",
      "picture4": "assets/images/travelC/C2_theplace_4.png",
      "picture5": "assets/images/travelC/C2_theplace_5.jpg",
      "data": 
          "โป่งแยงจังเกิ้ล โคสเตอร์และซิปไลน์ (Pongyang Jungle Coaster & Zipline) ตั้งอยู่ที่ อำเภอแม่ริม จังหวัดเชียงใหม่ อยู่ในโซนม่อนแจ่มที่ไม่ว่าคุณจะพักที่รีสอร์ทไหนก็ต้องผ่านเส้นทางที่นี่อย่างแน่นอน พื้นที่โดยรอบที่นี่เป็นป่าและเขา ช่วงหน้าหนาวบรรยากาศดีสุดๆ"+
          "ส่วนเครื่องเล่นก็มีกว่า 5 อย่าง โดยสามารถซื้อได้ทั้งตั๋วแบบรวมหรือจะแยกเล่นตามความชอบก็ได้ นอกจากจะมีเครื่องเล่นมันส์ๆ ให้สนุกแล้วนั้น ยังมีคาเฟ่และรีสอร์ทสวยให้บริการ โดยรีวิวนี้จะพาไปชมกันทั้งหมดทุกโซนอีกด้วย",
      "clock":
          "เวลาทำการ: โซนเครื่องเล่นเปิดบริการทุกวัน จันทร์-ศุกร์ 09.00-17.00 น.แต่ เสาร์-อาทิตย์ 08.30-17.30 น. ส่วนคาเฟ่เปิดบริการทุกวัน 09.00-18.00 น. โทรศัพท์: 092-973-8868,061-954-1659",
      "location":
          "สถานที่ตั้ง: 99/9 หมู่ 2 ต.โป่งแยง อ.แม่ริม จ.เชียงใหม่",
      "lat":
          "18.91708732131294",
      "lnt":
          "98.82158264075271"
    },
    {
      "name": "วันนิมมาน",
      "picture1": "assets/images/travelC/C3_theplace_1.jpg",
      "picture2": "assets/images/travelC/C3_theplace_2.png",
      "picture3": "assets/images/travelC/C3_theplace_3.png",
      "picture4": "assets/images/travelC/C3_theplace_4.png",
      "picture5": "assets/images/travelC/C3_theplace_5.png",
      "data": 
          "One nimman คอมมิวนิตี้มอลล์ของเมืองเชียงใหม่บนพื้นที่สุดฮิตอย่างนิมมานเหมินท์ ที่ครบครันทั้งแหล่งช้อปปิ้ง ไลฟ์สไตล์ จุดเช็กอินถ่ายภาพสวยๆ และจุดพักผ่อนอย่างเหนือระดับเพื่อการจับจ่ายและไลฟ์สไตล์ที่ร่วมสมัย เป็น Community Mall แห่งใหม่ ในย่านนิมมานเหมินทร์ บนพื้นที่ 13 ไร่"+
          "เป็นแหล่งรวมร้านค้า ศิลปะ วัฒนธรรม และความร่วมสมัย ตัวอาคารมีการผสมผสานระหว่างสถาปัตยกรรมแบบล้านนา กับยุโรป อาคารผนังอิฐ ซุ้มประตูโค้ง มีมุมสวยๆ ให้ถ่ายรูปหลายมุม เหมาะสำหรับเป็นที่เดินเล่น ช๊อปปิ้ง ทานข้าว ตั้งแต่ช่วงสาย ไปจนถึงกลางคืนภายในโครงการแบ่งพื้นที่เป็น 6 โซน"+
          "1. One Square ลานกิจกรรม เป็นลานกว้างเอนกประสงค์  มุมถ่ายรูป ลานเต้น โยคะ"+
          "2. Artisan Street สินค้าโฮมเมด ของตกแต่งบ้าน"+
          "3. All One แหล่งรวมของฝากเชียงใหม่"+
          "4. One Street Food Market ศูนย์อาหาร รวมสตรีทฟู้ดขึ้นชื่อของเชียงใหม่กว่า 50 ร้าน"+
          "5. Nimman Convention Center – สถานที่จัดงานประชุม งานแต่งงาน งานอีเว้นท์ต่างๆ"+
          "6. U Nimman Hotel โรงแรมหรูระดับ 5 ดาว และทพกระยะยาว ระดบ 4 ดาว",
      "clock":
          "เวลาเปิด-ปิด: 11.00-23.00 เวลาทำการ: ทุกวัน โทรศัพท์: 052-080-900",
      "location": 
          "ถนน นิมมานเหมินทร์ เชียงใหม่ (แยกรินคำ)",
      "lat":
          "18.800354341578608",
      "lnt":
          "98.96822406588905"
    },
    {
      "name": "ประตูท่าแพ",
      "picture1": "assets/images/travelC/C4_theplace_1.jpg",
      "picture2": "assets/images/travelC/C4_theplace_2.png",
      "picture3": "assets/images/travelC/C4_theplace_3.png",
      "picture4": "assets/images/travelC/C4_theplace_4.png",
      "picture5": "assets/images/travelC/C4_theplace_5.png",
      "data": 
          "ประตูท่าแพซึ่งตั้งอยู่ในปัจจุบันนี้ เทศบาลนครเชียงใหม่และกรมศิลปากรได้ร่วมกันสร้างขึ้นมาใหม่ เมื่อปี พ.ศ. 2528 โดยอาศัยหลักฐานทางประวัติศาสตร์และโบราณคดี ประกอบกับภาพถ่ายประตูเมืองเชียงใหม่ประตูหนึ่ง ซึ่งถ่ายเมื่อปี พ.ศ. 2422ประตูท่าแพที่ถูกเรียกกันในปัจจุบันนั้น แท้จริงมีนามว่า"+"ประตูเชียงเรือก"+"เพราะอยู่ใกล้หมู่บ้านเชียงเรือก สร้างขึ้นครั้งแรกในรัชสมัยพญามังราย"+
          "เมื่อแรกตั้งเมืองเชียงใหม่ในปี พ.ศ. 1839 ส่วนประตูท่าแพของจริงนั้นเดิมเคยตั้งอยู่บริเวณสี่แยกวัดแสนฝาง ซึ่งเป็นประตูของแนวกำแพงเมืองชั้นนอก ต่อมาเมื่อมีการรื้อแนวกำแพงชั้นนอกออกจึงเหลือแต่ประตูเชียงเรือกที่เป็นประตูชั้นใน ชาวบ้านจึงเรียกประตูเชียงเรือกนี้ว่าประตูท่าแพแทนในสมัยโบราณ คำว่า"+"เชียง"+"หมายถึง"+"เวียง"+"หรือ"+"เมอง"+"สวนคำวา"+"เรอก"+"นนมความหมายอกอยางหนงวา"+
          "เรอ หรอ เฮอ ซงหมายถง พาหนะทใชเดนทางไปมาทางแมนำ ค ครอง ฝายเหมอง เปนตน ดงน คำวา"+"เชยงเรอก"+"หากพดเปนภาษาชาวบาน กอาจแปลออกมาไดเปนเชยงเรอ หรอเวยงเรอ ซงกหมายถงเมองของเรอ ทขายของทางเรอ หรอสถานทมเรอมากกวาได เหตนในสมยตอมาจงถกเรยกวาทาแพ ซงกมความหมายเดม คอทจอดแพหรอเรอ มความหมายเดยวกนคอ เมองของเรอ ทขายของทางเรอ หรอสถานทมเรอมาก",
      "clock":
          "เวลาทำการ: 17:00-22:30 เวลาทำการ: เฉพาะวันอาทิตย์",
      "location":
          "สถานที่ตั้ง: ถนน ราชดำเนิน ตำบลศรีภูมิ อำเภอเมืองเชียงใหม่ เชียงใหม่ 50200",
        "lat":
          "18.787966431079877",
      "lnt":
          "98.99337936588881"
    },
    {
      "name": "ทูบเทรควอเตอร์พาร์ค",
      "picture1": "assets/images/travelC/C5_theplace_1.jpg",
      "picture2": "assets/images/travelC/C5_theplace_2.png",
      "picture3": "assets/images/travelC/C5_theplace_3.png",
      "picture4": "assets/images/travelC/C5_theplace_4.png",
      "picture5": "assets/images/travelC/C5_theplace_5.png",
      "data": 
          "ทูบเทรควอเตอร์พาร์ค สวนน้ำขนาดใหญ่สุดๆแห่งแรกของเชียงใหม่ ภายใต้แนวคิด 'อวกาศ' สวนน้ำแห่งแรกของเชียงใหม่ที่ผสมผสานระหว่างสวนน้ำเข้ากับยานอวกาศไว้ด้วยกันอย่างลงตัวบนพื้นที่กว่า 30 ไร่ ตั้งอยู่ในพื้นที่อำเภอสันกำแพง ซอยวัดพระนอนแม่ปูคา"+
          "จากแยกบ่อสร้างมุ่งหน้าเข้าอำเภอสันกำแพง 500 เมตร ใช้เวลาในการเดินทางจากตัวเมืองไม่เกิน 30 นาที ภายในสวนน้ำแห่งนี้ทุกท่านจะได้พบกับเครื่องเล่นทั้งหมด 4 โซน อาทิ KID’S POOL PHASE, SPLASH POOL PHASE, WAVE POOL PHASE และ LAZY RIVER PHASE"+
          "ระดับน้ำลึกสุดอยู่ที่ 1.5 เมตร และกิจกรรมต่างๆที่รองรับได้ทั้งกลางวันและกลางคืน พร้อมร้านขายของที่ระลึก ร้านนวดแผนไทย ร้าน อาหารนานาชนิด ทั้งไทย และต่างชาติรวมถึงร้านกาแฟ ที่ให้ความรู้สึกเหมือนอยู่ในห้วงอวกาศ",
      "clock": 
          "เวลาเปิด-ปิด: 11:00-18:30 เวลาทำการ: พฤหัสบดี-จันทร์ ปิดทำการ: พุธ โทรศัพท์: 052-010-123",
      "location":
          "สถานที่ตั้ง: ถนนบ่อสร้าง ซอย 10 ตำบลต้นเปา อำเภอสันกำแพง เชียงใหม่ 50130",
      "lat":
          "18.76505051698724",
      "lnt":
          "99.09695155239487"
    },
    {
      "name": "ฮิโนกิแลนด์",
      "picture1": "assets/images/travelC/C6_theplace_1.png",
      "picture2": "assets/images/travelC/C6_theplace_2.png",
      "picture3": "assets/images/travelC/C6_theplace_3.png",
      "picture4": "assets/images/travelC/C6_theplace_4.png",
      "picture5": "assets/images/travelC/C6_theplace_5.png",
      "data": 
          "อาณาจักรฮิโนกิแลนด์ (Hinoki land) เป็นสถานที่ท่องเที่ยวที่สร้างเลียนแบบปราสาทและหมู่บ้านโบราณของคนญี่ปุ่น  เปิดให้เข้าชมเมื่อวันที่ 4 ตุลาคม พ.ศ. 2561 เมื่อเราก้าวเข้าไปเราก็จะพบกับ โคมแดง ซึ่งเขียนตัวอักษรภาษาญี่ปุ่น แปลเป็นไทยได้ว่า “โชคดี” แต่อยู่ตรงประตูทางเข้าซึ่งแปลโดยรวมก็คือประตูแห่งความโชคดีซึ่งทุกคนที่จะเข้าไปด้านในจะต้องผ่านประตูนี้ ภายในตกแต่งด้วยดอกซากุระ มีการจัดสวนแบบญี่ปุ่น"+
          "มีเสาโทริอิสีแดงมีทั้งหมด 88 คู่ เมื่อเดินไปจนสุดทางจะเจอคู่ที่ใหญ่ที่สุด และจะพบกับปราสาทฮิโนกิ บันไดทางขึ้นปราสาทมีทั้งหมด 24 ขั้น มูลค่า 96 ล้านบาท เรียกว่าใหญ่ที่สุดในประเทศไทยเลยก็ว่าได้ ให้ความรู้สึกอลังการและได้ Feeling แบบญี่ปุ่นสุดๆ",
      "clock":
          "เวลาเปิด-ปิด: 8:00-17:00 เวลาทำการ: ทุกวัน โทรศัพท์: 094-731-0731",
      "location":
          "สถานที่ตั้ง: 168 บ้านร้องธาร, ศรีดงเย็น, อำเภอ ไชยปราการ เชียงใหม่ 50320",
      "lat":
          "19.656036948984962",
      "lnt":
          "99.14801641193216"
    }
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
                  builder: (context) => TheplaceTravelC(
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