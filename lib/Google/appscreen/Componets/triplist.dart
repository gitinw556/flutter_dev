import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/appscreen/Componets/trip_model.dart';
import 'package:flutter_dev/Google/appscreen/Screen/tripscreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:intl/intl.dart';

class MyList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyListView1(
            img_photo: 'assets/images/travelA/A2_theplace_1.jpeg',
            img_name: 'วัดพระธาตุดอยดำ',
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                '>>',
                style: TextStyle(fontSize: 17),
              )),
          MyListView1(
            img_photo: 'assets/images/travelC/C2_theplace_1.jpg',
            img_name: 'จังเกิลโคสเตอร์',
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                '>>',
                style: TextStyle(fontSize: 17),
              )),
          MyListView1(
            img_photo: 'assets/images/travelB/B2_theplace_1.jpg',
            img_name: 'ดอยม่อนแจ่ม',
          ),
        ],
      ),
    );
  }
}

class MyListView1 extends StatelessWidget {
  final String img_photo;
  final String img_name;
  MyListView1({this.img_photo, this.img_name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Image.asset(img_photo, fit: BoxFit.cover),
          subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                img_name,
                style: TextStyle(fontSize: 15, color: Colors.black),
              )),
        ),
      ),
    );
  }
}

class MyList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyListView2(
            img_photo: 'assets/images/travelD/D2_theplace_1.jpg',
            img_name: 'ไร่สตอเบอร์รี่ บ้านนอแล',
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                '>>',
                style: TextStyle(fontSize: 17),
              )),
          MyListView2(
            img_photo: 'assets/images/travelB/B6_theplace_1.jpg',
            img_name: 'ดอยอ่างขาง',
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                '>>',
                style: TextStyle(fontSize: 17),
              )),
          MyListView2(
            img_photo: 'assets/images/travelB/B3_theplace_1.jpg',
            img_name: 'แม่กำปอง',
          ),
        ],
      ),
    );
  }
}

class MyListView2 extends StatelessWidget {
  final String img_photo;
  final String img_name;
  MyListView2({this.img_photo, this.img_name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Image.asset(img_photo, fit: BoxFit.cover),
          subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                img_name,
                style: TextStyle(fontSize: 15, color: Colors.black),
              )),
        ),
      ),
    );
  }
}

class MyList3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyListView3(
            img_photo: 'assets/images/travelA/A3_theplace_1.jpg',
            img_name: 'วัดเจดีย์หลวง',
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                '>>',
                style: TextStyle(fontSize: 17),
              )),
          MyListView3(
            img_photo: 'assets/images/travelC/C3_theplace_2.png',
            img_name: 'วันนิมมาน',
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                '>>',
                style: TextStyle(fontSize: 17),
              )),
          MyListView3(
            img_photo: 'assets/images/travelC/C4_theplace_1.jpg',
            img_name: 'ประตูท่าแพ',
          ),
        ],
      ),
    );
  }
}

class MyListView3 extends StatelessWidget {
  final String img_photo;
  final String img_name;
  MyListView3({this.img_photo, this.img_name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Image.asset(img_photo, fit: BoxFit.cover),
          subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                img_name,
                style: TextStyle(fontSize: 15, color: Colors.black),
              )),
        ),
      ),
    );
  }
}

class DataTrip1 extends StatelessWidget {
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
                MaterialPageRoute(builder: (value) => TripScreen());
            Navigator.push(context, route);
          },
        ),
        title: Text('       Chiang Mai Travel', style: TextStyle(fontFamily: 'FredokaOne',fontSize: 25, color: Colors.white ))
      ),
    body: ListView(
      padding: EdgeInsets.all(24),
      children: [
        Text(
          'ทริปที่ 1 ',
            style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold),),
        Text('ประกอบด้วยสถานที่ : พระธาตุดอยคำ , จังเกิลโคสเตอร์ , ม่อนแจ่ม',
        style: TextStyle(fontFamily: 'Sriracha',fontSize: 16,fontWeight: FontWeight.bold),),
        Text('    สำหรับทริปนี้สถานที่แรกของทริปแนะนำเราขอแนะนำเป็นวัดพระธาตุดอยคำ เนื่องจากวัดพระธาตุดอยคำเป็นวัดที่มีความสำคัญในจังหวัดเชียงใหม่'+
            'มีอายุเก่าแก่มากกว่า 1,300 ปี และนักท่องเที่ยวนิยมมาขอพร บนบาน โดยเฉพาะขอเลขเด็ด ขอให้ถูกหวย การขอพรให้จุดูป 3 ดอก แล้วอธิษฐานขอพรเรื่องที่ต้องการ บอกท่านว่าจะถวายดอกมะลิ 50 พวงขึ้นไป'+
            'ซึ่งดอกมะลิบ่งบอกถึงความศรัทธาได้เป็นอย่างดี ด้านหลังวัดจะเป็นจุดชมวิวมองเห็นวิวได้ไกลถึงตัวเมืองเชียงใหม่ สนามบินเชียงใหม่ และที่เห็นได้ชัดในระยะใกล้ก็จะเป็นอุทยานหลวงราชพฤษ',
            style: TextStyle(fontFamily: 'Trirong',fontSize: 15),),
        Text('    หลังจากการที่ได้อิ่มอกอิ่มใจกับการไหว้พระขอพรและชมวิวทิวทัศน์ สถานที่ที่อยากแนะนำต่อไป ตั้งอยู่ในโซนม่อนแจ่มไม่ว่าคุณจะพักที่รัสอทร์ทไหนก็ต้องผ่านเส้นทางนี้แน่นอน นั่นก็คือ จังเกิลโคสเตอร์'+ 
            'มีพื้นที่โดยรอบเป็นป่าและเขา ช่วงหน้าหนาวบรรยากาศดีสุดๆ มีเครื่องเล่นให้เล่นมากกว่า 5 อย่าง เหมาะสำหรับคนที่ชอบความสนุกความท้าทายเป็นอย่างมาก นอกจากจะมีเครื่องเล่นมันส์ๆ แล้วนั้น' +
            'ยังมีคาเฟ่ที่ล้อมรอบไปด้วยธรรมชาติให้บริการอีกด้วย ทำให้ผู้ที่มาพักผ่อนที่นี่สัมผัสได้กับธรรมชาติที่ร่มเย็น เงียบสงบ',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    หลังจากที่ร่างกายได้ผ่อนคลายกับคาเฟ่แนวธรรมชาติแล้ว สถานที่ต่อไปซึ่งที่สถานที่ที่ทุกคนที่มาเชียงใหม่ต้องได้ลองมาสัมผัสกับสถานที่ที่มีบรรยากาศเย็นสบาย อีกทั้งยังมีหมอกในตอนเช้านับเป็นการต้อนรับเช้าวันใหม่ที่สุดใส' +
            'นั่นก็คือ ม่อนแจ่ม ที่ตั้งอยู่บริเวณสันเขาจึงทำให้มีอากาศเย็นสบายตลอดทั้งปี และที่นี่ก็ยังมีจุดชมวิวที่สามารถมองเห็นวิวทิวทัศน์ได้อย่างชัดเจนอีกด้วย โดยเฉพาะทิวเขาที่สลับกันไกลจนสุดลูกหูลูกตา ซึ่งเมื่อมองลงไปที่ด้านล่างทางทิศใต้ก็จะพบกับหมู่บ้านหนองหอย' +
            'แปลงปลูกผักพืชเมืองหนาว นอกจากนี้ม่อนแจ่มยังมีร้านอาหารอร่อย ให้นั่งทานไปชมวิวไปอีกด้วย',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('ข้อแนะนำ',
        style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold)),
        Text(' - ในช่วงกลางวันสำหรับคนที่ไม่ชอบอากาศร้อนควรมีร่มติดกระเป๋า',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - เครื่องเล่นจังเกิลโคสเตอร์ไม่เหมาะสำหรับผู้มีภาวะร่างกายที่อ่อนแอ หรือผู้ที่เป็นโรคหัวใจ ผู้สูงอายุ และเด็กเล็ก',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ม่อนแจ่มแนะนำให้เดินเที่ยวในช่วงเดือนตุลาตม – กุมภาพันธ์ เพราะจะได้สัมผัสกับอาการที่หนาวเย็น',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ม่อนแจ่มในช่วงดึกจะมีอากาศหนาวเย็น ควรพกเสื้อกันหนาว กางเกงขายาว อย่างน้อย 2 ตัว และเตรียมหมวก ถุงเท้า ถุงมือ มาตามความเหมาะสม',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
      ],
    ),
    );
  }
}

class DataTrip2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => TripScreen());
            Navigator.push(context, route);
          },
        ),
        title: Text('       Chiang Mai Travel', style: TextStyle(fontFamily: 'FredokaOne',fontSize: 25, color: Colors.white ))
      ),
    body: ListView(
      padding: EdgeInsets.all(24),
      children: [
        Text(
          'ทริปที่ 2 ',
            style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold),),
        Text('ประกอบด้วยสถานที่ : พระธาตุดอยคำ , จังเกิลโคสเตอร์ , ม่อนแจ่ม',
        style: TextStyle(fontFamily: 'Sriracha',fontSize: 16,fontWeight: FontWeight.bold),),
        Text('    จุดเด่นของทริปนี้เรามุ่งเน้นไปที่ธรรมชาติ เหมาะสำหรับคนรักธรรมชาติ รักความเงียบสงบ คนที่อยากพักผ่อนหย่อนใจ',
            style: TextStyle(fontFamily: 'Trirong',fontSize: 15),),
        Text('    สถานที่แรกเราขอแนะนำ ก็คือ ไร่สตอเบอร์รี่บ้านนอแล เป็นไร่สตอเบอร์รี่ที่สวยงาม ใครมาอ่างขางไม่ควรพลาดที่นี่เลย ควรมาไร่สตอเบอร์รี่ในยามเช้าเพราะจะเห็นหมอกปกคลุมบริเวณนี้สวยงามมากๆ และยังเห็นสตอเบอร์รี่ที่ปลูกตามไหล่ขั้นเป็นขั้นบันไดลดหลั่นกันลงมา'+
            'ในยามเช้าประมาณ 7 โมงกว่า จะได้พบกับแสงแดดอุ่นพาดผ่านสายหมอกในยามเช้า และยังได้เห็นวิถีชาวบ้านที่มาเก็บสตอเบอร์รี่ในยามเช้าด้วย นอกจากนี้ยังสามารถเลือกซื้อสตอเบอร์รี่สดๆได้จากสวนรสชาติหวานกรอบอร่อย',
            style: TextStyle(fontFamily: 'Trirong',fontSize: 15),),
        Text('    เมื่อคุณได้มาที่อ่างขางสถานที่ที่คุณไม่ควรพลาดและเป็นจุดเด่นของอ่างขางเลยก็ว่าได้ นั่นก็คือ ดอยอ่างขาง เป็นสถานที่ท่องเที่ยวยอดนิยมแห่งหนึ่งของจังหวัดเชียงใหม่ มีอากาศเย็นสบายตลอดปี ช่วงหน้าหนาวจะหนาวจัด สถานที่ท่องเที่ยวดอยอ่างขาง สถานีเกษตรหลวงอ่างขาง' +
            'เป็นพื้นที่สาธิตการเพาะปลูกพืชดอก ผลไม้เมืองหนาวและพืชเขตอบอุ่นปลูกไว้มากมาย และยังมีจุดชมวิวกิ่วลม สามารถมองเห็นวิวทิวทัศน์ที่สวยงามของเทือกเขา ที่จุดชมวิวกิ่วลมนี้สามารถชมพระอาทิตย์ขึ้นและพระอาทิตย์ตกได้ รวมถึงทะเลหมอกในช่วงหน้าหนาว บนดอยอ่างขางนั้นนอกจากชมวิวและชมต้นไม้ดอกไม้แล้ว' +
            'ยังมีกิจกรรมให้สนุกอีกหลายอย่าง  อาทิเช่น',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - เดินป่าศึกษาธรรมชาติ  ซึ่งเป็นเส้นทางเดินป่าระยะทาง 2 กิโลเมตร  มีนำตกขนาดเล็กที่สวยงามให้ชม',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ขี่จักยาน',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - กิจกรรมดูนก  สามารถดูนกได้มากกว่า 1,000 ชนิด  จุดที่ดีที่สุดคือบริเวณหน่วยจัดการต้นน้ำแม่เผอะ',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ขี่ฬ่อชมวิว',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    หลังจากการที่สนุกกับการทัวร์สถานที่และร่วมกิจกรรมต่างๆที่ดอยอ่างขางแล้ว อาจทำให้คุณรู้สึกเหนื่อย ต้องการหาที่พักผ่อนที่เงียบสงบ ร่มเย็น ซึ่งจะเป็นที่ไหนไม่ได้เลยนอกจากหมู่บ้านแม่กำปอง ซึ่งเป็นหมู่บ้านเล็กๆในหุบเขาที่ชาวบ้านใช้ชีวิตอยู่กันอย่างเรียบง่าย และเป็นสถานที่ท่องเที่ยวเชิงอนุรักษ์แบบโฮมสเตย์ในจังหวัดเชียงใหม่'+
           'เป็นสถานที่ที่มีนักท่องเที่ยวเดินทางมาไม่ขาดสาย เพื่อสัมผัสวิถีชีวิตของคนที่นี่ บ้านแม่กำปองมีอากาศเย็นและชื้นตลอดทั้งปี และเสน่ห์ที่ทำให้เราเต็มอิ่ม ก็คือ ความงามจากธรรมชาติ มีภูเขาสลับไปมา เวลามองไปไหนเราก็จะเห็นธรรมชาติที่สวยงามแปลกตา โดยเฉพาะน้ำตกแม่กำปองที่เปรียบเสมือนสายธารน้ำหลักที่หล่อเลี้ยงหมู่บ้านนี้ไว ทมถง 7 ชน กมความสวยงามไมแพทไหน บานแมกำปองจงเหมาะทจะเปนสถานทพกผอนหยอนใจอยางยง',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('ข้อแนะนะ',
        style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold)),
        Text(' - หากมาในช่วงฤดูหนาวจะสัมผัสอากาศที่เย็นสบาย',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ไร่สตอเบอร์รี่เวลาเข้าไปถ่ายภาพควรระวังผลผลิตของชาวบ้านด้วย',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ดอยอ่างขางทางขึ้นค่อนข้างคดเคี้ยวและชัน การขับรถไปเองจึงต้องระมัดระวังอย่างมาก',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ดอยอ่างขางหากไปเที่ยวช่วงหน้าหนาวควรเตรียมอุปกรณ์กันหนาวให้พร้อม เนื่องจากมีอากาศหนาวจัด',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - สำหรับคนที่แพ้แมลง ควรพกยามาด้วย',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
      ],
    ),
    );
  }
}

class DataTrip3 extends StatelessWidget {
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
                MaterialPageRoute(builder: (value) => TripScreen());
            Navigator.push(context, route);
          },
        ),
        title: Text('       Chiang Mai Travel', style: TextStyle(fontFamily: 'FredokaOne',fontSize: 25, color: Colors.white ))
      ),
    body: ListView(
      padding: EdgeInsets.all(24),
      children: [
        Text(
          'ทริปที่ 3 ',
            style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold),),
        Text('ประกอบด้วยสถานที่ : วัดเจดีย์หลวง , วันนิมมาน , ประตูท่าแพ',
        style: TextStyle(fontFamily: 'Sriracha',fontSize: 16,fontWeight: FontWeight.bold),),
        Text('    ในส่วนของทริปนี้จุดเด่นเน้นในโซนของตัวเมืองเชียงใหม่ ในช่วงเช้าสถานที่เเรกในทริปนี้เราจะพาผู้ใช้เเอพไปชมกับความงามของมหาวิหารซึ่งถูกสร้างขึ้นในเมืองเชียงเเสน'+ 
            'ซึ่งจัดว่าเป็นสถานที่ที่หนึ่งสำหรับผู้ที่มาท่องเที่ยวจังหวัดเชียงใหม่ไม่ควรพลาด นั่นก็คือ วัดเจดีย์หลวงวรวิหาร หรือ วัดโชติการาม เป็นสถานที่ประดิษฐานเจดีย์ใหญ่ที่สุดในจังหวัดเชียงใหม่ และเป็นพระอารามหลวงเก่าแก่ของเชียงใหม่'+ 
            'ตั้งอยู่ใจกลางเมือง มีบริเวณกว้างขวาง ที่สำคัญเป็นวัดที่ชาวเชียงใหม่ศรัทธากันมากๆ และเป็นที่ตั้งศาลหลักเมืองของเชียงใหม่ หรือเรียกกันว่า หออินทขิล อยู่ใจกลางเมืองเชียงใหม่ และมีความสำคัญต่อชาวเชียงใหม่เป็นอย่างมาก',
            style: TextStyle(fontFamily: 'Trirong',fontSize: 15),),
        Text('     วัดเจดีย์หลวง เป็นเจดีย์ที่ใหญ่และสวยงามมาก สามารถมองแล้วจินตนาการถึงตอนที่เจดีย์ยังสวยงามครบสมบูรณ์นั้น จะต้องเป็นเจดีย์ที่งดงาม มีเอกลักษณ์ ตรึงตาผู้ที่ได้พบเป็นอย่างมากแน่นอน เจดีย์จะแบ่งออกเป็นสี่ด้าน แต่ละด้านจะมีพระพุทธรูปประดิษฐานอยู่'+ 
            'รอบๆฐานเจดีย์มีช้างเผือก และพญานาคที่บันไดทางขึ้นแต่ละด้าน ซึ่งถูกกาลเวลากัดกร่อนไปมากแล้ว แต่ยังเหลือเค้าให้ได้เห็นความสวยงามแต่ครั้งโบราณอยุ่ด้านหลังของเจดีย์หลวงเป็น แบบจำลองพระธาตุประจำปีเกิดต่างๆ ที่เค้ามีความเชื่อกันว่า พระธาตุนี้เป็นพระธาตุประจำวันเกิดที่นี่'+
            'จังหวัดนี้ เช่นคนเกิดปีขาล ต้องไปไหว้พระธาตุช่อแฮ ที่จังหวัดแพร่ แต่ที่มีของทุกปีเกิด ไม่ต้องไปไหนไกล ไหว้และทำบุญกันได้ทั้งครอบครัวเลย นอกจากนี้ด้านหลังยังมีศาลาธรรม ศาลาวัดพระนอน ให้ได้กราบสักการะอีกด้วยนอกจากจะมีเจดีย์หลวงอันสวยงามเเล้วภายในวัดนี้ยังมี'+
            'ซุ้มประตูวิหาร ศาลหลักเมือง พระธาตุ ภาพเขียนผนังที่สวยงาม ประจำปีเกิด เเละพระเจ้าทันใจ ให้สักการะบูชาเเละให้ชมความงดงามอีกด้วย ต่อมาสถานที่ต่อไปที่เราอยากจะเเนะนำ ก็คือ วันนิมมาน One nimman คอมมิวนิตี้มอลล์ของเมืองเชียงใหม่บนพื้นที่สุดฮิตอย่างนิมมานเหมินท์'+
            'ที่ครบครันทั้งแหล่งช้อปปิ้ง ไลฟ์สไตล์ จุดเช็กอินถ่ายภาพสวยๆ และจุดพักผ่อนอย่างเหนือระดับเพื่อการจับจ่ายและไลฟ์สไตล์ที่ร่วมสมัย เป็น Community Mall แห่งใหม่ ในย่านนิมมานเหมินทร์ บนพื้นที่ 13 ไร่ เป็นแหล่งรวมร้านค้า ศิลปะ วัฒนธรรม และความร่วมสมัย'+
            'ตัวอาคารมีการผสมผสานระหว่างสถาปัตยกรรมแบบล้านนา กับยุโรป อาคารผนังอิฐ ซุ้มประตูโค้ง มีมุมสวยๆ ให้ถ่ายรูปหลายมุม เหมาะสำหรับเป็นที่เดินเล่น ช๊อปปิ้ง ทานข้าว ตั้งแต่ช่วงสาย ไปจนถึงกลางคืนภายในโครงการแบ่งพื้นที่เป็น 6 โซน',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    1. One Square ลานกิจกรรม เป็นลานกว้างเอนกประสงค์  มุมถ่ายรูป ลานเต้น โยคะ',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    2. Artisan Street สินค้าโฮมเมด ของตกแต่งบ้าน',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    3. All One แหล่งรวมของฝากเชียงใหม่',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    4. One Street Food Market ศูนย์อาหาร รวมสตรีทฟู้ดขึ้นชื่อของเชียงใหม่กว่า 50 ร้าน',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    5. Nimman Convention Center – สถานที่จัดงานประชุม งานแต่งงาน งานอีเว้นท์ต่างๆ',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('    6. U Nimman Hotel โรงแรมหรูระดับ 5 ดาว และทพกระยะยาว ระดบ 4 ดาว',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('     หลังจากการที่ได้ไปช๊อปปิ้งอย่างจุใจเเล้วเราจะพาผู้ใช้เเอพไปชมกับสถานที่สุดท้ายในทริปเเนะนำนี้ ซึ่งถือเป็นจุดเด่นเเละถือเป็นเอกลักษณ์ของเมืองเชียงใหม่เลยก็ว่าได้ นั่นก็คือ ประตูท่าเเพ  ซึ่งเทศบาลนครเชียงใหม่และกรมศิลปากรได้ร่วมกันสร้างขึ้นมาใหม่ เมื่อปี พ.ศ. 2528'+ 
            'โดยอาศัยหลักฐานทางประวัติศาสตร์และโบราณคดี ประกอบกับภาพถ่ายประตูเมืองเชียงใหม่ประตูหนึ่ง ซึ่งถ่ายเมื่อปีพ.ศ.2422 ประตูท่าแพ(ชั้นใน) หรือชื่อเดิม ประตูเชียงเรือก เป็นประตูทางทิศตะวันออก และเป็น 1 ใน 5 ประตูเมืองชั้นในของเวียงเชียงใหม่ ปัจจุบันเป็นประตูเมืองเพียงแห่งเดียวที่มีบานประตู' +
            'เเละเป็นสถานที่ที่นักท่องเที่ยวนิยมมาถ่ายรูปกันอย่างมาก ยิ่งในช่วงเวลายามเย็นพระอาทิตย์เริ่มตกการถ่ายรูปในช่วงนั้นเเสงพระอาทิตย์จะยิ่งทำให้รูปที่ถ่ายดูสวยงามยิ่งขึ้น สถานที่นี้ไม่ได้มีจุดน่าสนใจเเค่ประตูท่าเเพเท่านั้น ในช่วง 17:00 - 22:00 ยังมีถนนคนเดินให้เที่ยวชม ช๊อปปิ้งได้ต่ออีกด้วย ซึ่งเป็นเเหล่งรวมพ่อค้าเเม่ค้า'+
            'ทั้งของกิน ของใช้ วิถีชีวิต วัฒนธรรมของชาวเชียงใหม่ให้ได้สัมผัสอีกด้วย เเละทริปนี้ ก็เป็นทริปเเนะนำสุดท้ายที่เราหวังว่าผู้ใช้เเอพจะพึ่งพอใจเเละเพลิดเพลินไปกับสถานที่ที่เราเเนะนำน๊าาา',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text('ข้อแนะนำ',
        style: TextStyle(fontFamily: 'Sriracha',fontSize: 20,fontWeight: FontWeight.bold)),
        Text(' - ในช่วงหน้าฝน หน้าร้อน  เค้าพกร้อน เนื่องจากอากาศช่วงกลางวันอาจมีอากาศร้อน หรือฝนตกตามฤดูกาล',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
        Text(' - ไปวัด พกไฟเเซคด้วยก็ดี บางทีวัดอาจไม่ได้จุดไฟไว้ให้ช่วงที่ไป',
        style: TextStyle(fontFamily: 'Trirong',fontSize: 15)),
      ],
    ),
    );
  }
}


class Tripmap1 extends StatefulWidget {
  @override
  _Tripmap1State createState() => _Tripmap1State();
}

class _Tripmap1State extends State<Tripmap1> with TravelDataMixin1 {
  GoogleMapController controller;
  PageController pageController;
  List<Marker> allMarkers = [];
  int prevPage;
  double zoomVal = 5.0;

  void mapCreated(controller) {
    setState(() {
      controller = controller;
    });
  }

/////////////////////   ListDataTravel   ////////////////////////////////
  @override
  void initState() {
    super.initState();
    List<TravelData1> 
    travelData_new = onTimefunction();
    travelData_new.forEach((element) {
      allMarkers.add(Marker(
        markerId: MarkerId(element.name),
        draggable: false,
        infoWindow: InfoWindow(title: element.name, snippet: element.address),
        position: element.location,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ));
    });
    pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(onScroll); 
  }

  onTimefunction() {
    int time_int = DateTime.now().hour;
    List<TravelData1> new_travelData = [];

    for (var value in travelData) {
      if ((value.starttime < time_int) & (value.endtime > time_int)) {
        new_travelData.add(value);
      }
    }
    return new_travelData;
  }

//////////////////////////////////////////////////////////////////////////////
  void onScroll() {
    if (pageController.page.toInt() != prevPage) {
      prevPage = pageController.page.toInt();
      moveCamera();
    }
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
        onTap: () {},
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 4.0,
          backgroundColor: Colors.lightBlue[700],
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => TripWeather1());
                  Navigator.push(context, route);
                },
                icon: Icon(MdiIcons.weatherPouring)),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => TripScreen());
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
                  target: LatLng(18.85332, 98.83741),
                  zoom: 11.0),
              markers: Set.from(allMarkers),
              onMapCreated: mapCreated,
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

class TripWeather1 extends StatefulWidget {
  @override
  _TripWeather1State createState() => _TripWeather1State();
}

class _TripWeather1State extends State<TripWeather1> with TravelDataMixin1 {
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
                  MaterialPageRoute(builder: (value) => Tripmap1());
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
              showDialogFunc1(context, travelData[index]);
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

showDialogFunc1(context, TravelDataMixin1) {
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
                      TravelDataMixin1.weatherphoto,
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
                                              TravelDataMixin1.name,
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
                                                        TravelDataMixin1
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
                                                TravelDataMixin1.weatherstate,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Trirong',
                                                  fontSize: 20,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                TravelDataMixin1.weathertemp +
                                                    '\u2103',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 35,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'max ${TravelDataMixin1.weathermax+'\u2103'+' / '+'min '+TravelDataMixin1.weathermin+'\u2103'}',
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
                                              TravelDataMixin1.weatherhum,
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
                                              TravelDataMixin1.weatherchance,
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
                                              TravelDataMixin1.weatherwind,
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

class Tripmap2 extends StatefulWidget {
  @override
  _Tripmap2State createState() => _Tripmap2State();
}

class _Tripmap2State extends State<Tripmap2> with TravelDataMixin2 {
  GoogleMapController controller;
  PageController pageController;
  List<Marker> allMarkers = [];
  int prevPage;
  double zoomVal = 5.0;

  void mapCreated(controller) {
    setState(() {
      controller = controller;
    });
  }

/////////////////////   ListDataTravel   ////////////////////////////////
  @override
  void initState() {
    super.initState();
    List<TravelData2> 
    travelData_new = onTimefunction();
    travelData_new.forEach((element) {
      allMarkers.add(Marker(
        markerId: MarkerId(element.name),
        draggable: false,
        infoWindow: InfoWindow(title: element.name, snippet: element.address),
        position: element.location,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ));
    });
    pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(onScroll); 
  }

  onTimefunction() {
    int time_int = DateTime.now().hour;
    List<TravelData2> new_travelData = [];

    for (var value in travelData) {
      if ((value.starttime < time_int) & (value.endtime > time_int)) {
        new_travelData.add(value);
      }
    }
    return new_travelData;
  }

//////////////////////////////////////////////////////////////////////////////
  void onScroll() {
    if (pageController.page.toInt() != prevPage) {
      prevPage = pageController.page.toInt();
      moveCamera();
    }
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
        onTap: () {},
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 4.0,
          backgroundColor: Colors.lightBlue[700],
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => TripWeather2());
                  Navigator.push(context, route);
                },
                icon: Icon(MdiIcons.weatherPouring)),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => TripScreen());
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
                  target: LatLng(19.38658, 99.12948),
                  zoom: 9.0),
              markers: Set.from(allMarkers),
              onMapCreated: mapCreated,
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

class TripWeather2 extends StatefulWidget {
  @override
  _TripWeather2State createState() => _TripWeather2State();
}

class _TripWeather2State extends State<TripWeather2> with TravelDataMixin2 {
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
                  MaterialPageRoute(builder: (value) => Tripmap2());
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
              showDialogFunc2(context, travelData[index]);
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

showDialogFunc2(context, TravelDataMixin2) {
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
                      TravelDataMixin2.weatherphoto,
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
                                              TravelDataMixin2.name,
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
                                                        TravelDataMixin2
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
                                                TravelDataMixin2.weatherstate,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Trirong',
                                                  fontSize: 20,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                TravelDataMixin2.weathertemp +
                                                    '\u2103',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 35,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'max ${TravelDataMixin2.weathermax+'\u2103'+' / '+'min '+TravelDataMixin2.weathermin+'\u2103'}',
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
                                              TravelDataMixin2.weatherhum,
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
                                              TravelDataMixin2.weatherchance,
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
                                              TravelDataMixin2.weatherwind,
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

class Tripmap3 extends StatefulWidget {
  @override
  _Tripmap3State createState() => _Tripmap3State();
}

class _Tripmap3State extends State<Tripmap3> with TravelDataMixin3 {
  GoogleMapController controller;
  PageController pageController;
  List<Marker> allMarkers = [];
  int prevPage;
  double zoomVal = 5.0;

  void mapCreated(controller) {
    setState(() {
      controller = controller;
    });
  }

/////////////////////   ListDataTravel   ////////////////////////////////
  @override
  void initState() {
    super.initState();
    List<TravelData3> 
    travelData_new = onTimefunction();
    travelData_new.forEach((element) {
      allMarkers.add(Marker(
        markerId: MarkerId(element.name),
        draggable: false,
        infoWindow: InfoWindow(title: element.name, snippet: element.address),
        position: element.location,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ));
    });
    pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(onScroll); 
  }

  onTimefunction() {
    int time_int = DateTime.now().hour;
    List<TravelData3> new_travelData = [];

    for (var value in travelData) {
      if ((value.starttime < time_int) & (value.endtime > time_int)) {
        new_travelData.add(value);
      }
    }
    return new_travelData;
  }

//////////////////////////////////////////////////////////////////////////////
  void onScroll() {
    if (pageController.page.toInt() != prevPage) {
      prevPage = pageController.page.toInt();
      moveCamera();
    }
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
        onTap: () {},
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 4.0,
          backgroundColor: Colors.lightBlue[700],
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (value) => TripWeather3());
                  Navigator.push(context, route);
                },
                icon: Icon(MdiIcons.weatherPouring)),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => TripScreen());
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
                  target: LatLng(18.78354, 98.97913),
                  zoom: 14.0),
              markers: Set.from(allMarkers),
              onMapCreated: mapCreated,
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

class TripWeather3 extends StatefulWidget {
  @override
  _TripWeather3State createState() => _TripWeather3State();
}

class _TripWeather3State extends State<TripWeather3> with TravelDataMixin3 {
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
                  MaterialPageRoute(builder: (value) => Tripmap3());
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
              showDialogFunc3(context, travelData[index]);
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

showDialogFunc3(context, TravelDataMixin3) {
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
                      TravelDataMixin3.weatherphoto,
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
                                              TravelDataMixin3.name,
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
                                                        TravelDataMixin3
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
                                                TravelDataMixin3.weatherstate,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Trirong',
                                                  fontSize: 20,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                TravelDataMixin3.weathertemp +
                                                    '\u2103',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 35,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'max ${TravelDataMixin3.weathermax+'\u2103'+' / '+'min '+TravelDataMixin3.weathermin+'\u2103'}',
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
                                              TravelDataMixin3.weatherhum,
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
                                              TravelDataMixin3.weatherchance,
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
                                              TravelDataMixin3.weatherwind,
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