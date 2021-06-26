import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/Screen/tripscreen.dart';

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
