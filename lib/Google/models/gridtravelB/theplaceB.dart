import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/models/gridtravelB/travelB.dart';


class ThePlaceB extends StatefulWidget {
  @override
  _ThePlaceBState createState() => _ThePlaceBState();
}

class _ThePlaceBState extends State<ThePlaceB> {
  var theplace_list = [
    {
      "name": "ดอยอินทนนท์",
      "picture1": "assets/images/travelB/B1_theplace_1.jpg",
      "picture2": "assets/images/travelB/B1_theplace_2.png",
      "picture3": "assets/images/travelB/B1_theplace_3.png",
      "picture4": "assets/images/travelB/B1_theplace_4.png",
      "picture5": "assets/images/travelB/B1_theplace_5.png",
      "data": 
          "ดอยอินทนนท์ เป็นยอดเขาที่สูงที่สุดในประเทศไทย ตั้งอยู่ที่อำเภอจอมทอง จังหวัดเชียงใหม่ เดิมมีชื่อว่า"+"ดอยหลวง"+"หรือ"+"ดอยหลวงอ่างกา"+"ชื่อของ ดอยอินทนนท์" +
          "เป็นชื่อของกษัตริย์พระนามว่าพระเจ้าอินทวิชยานนท์ เจ้าผู้ครองนครเชียงใหม่ ทรงเป็นผู้ที่ห่วงใยในป่าทางภาคเหนือและพยายามรักษาไว้ ภายหลังเสด็จพิราลัย" +
          "พระอัฐิส่วนหนึ่งได้เชิญไปประดิษฐาน ณ พระสถูปบนยอดดอยหลวง และเปลี่ยนชื่อเพื่อเป็นเกียรติ ยอดดอยอินทนนท์เป็นยอดดอยที่สูงที่สุดในประเทศไทยมีความสูงถึง 2,565 เมตร" +
          "จากระดับน้ำทะเลปานกลาง บนยอดดอยอินทนนท์ มีผืนป่าดิบดึกดำบรรพ์อันกว้างใหญ่สมบูรณ์ปกคลุม สามารถพบเห็นกล้วยไม้และพันธุ์ไม้ป่าที่สวยงามและหายาก มีลักษณะอากาศตั้งแต่แบบร้อนชื้น" +
          "บริเวณเชิงเขาจนถึงแบบมรสุมเขตอบอุ่นบริเวณยอดเขา",
      "clock": 
          "เวลาเปิด-ปิด: 05:00-18:00 เวลาทำการ: ทุกวัน โทรศัพท์: 053286728, 053268577",
      "location": 
          "สถานที่ตั้ง: ต.บ้านหลวง อ.จอมทอง จ.เชียงใหม่ 50160",
      "lat":
          "18.588571343706793",
      "lnt":
          "98.48714697716098"
    },
    {
      "name": "แม่กำปอง",
      "picture1": "assets/images/travelB/B3_theplace_1.jpg",
      "picture2": "assets/images/travelB/B3_theplace_2.jpg",
      "picture3": "assets/images/travelB/B3_theplace_3.png",
      "picture4": "assets/images/travelB/B3_theplace_4.png",
      "picture5": "assets/images/travelB/B3_theplace_5.png",
      "data": 
          "บ้านแม่กำปอง เป็นหมู่บ้านเล็กๆ ในหุบเขาที่ชาวบ้านใช้ชีวิตอยู่กันอย่างเรียบง่าย และเป็นสถานที่ท่องเที่ยวเชิงอนุรักษ์แบบโฮมสเตย์ในจังหวัดเชียงใหม่ ที่นักท่องเที่ยวนิยมเดินทางมาไม่ขาดสาย เพื่อสัมผัสวิถีชีวิตของคนที่นี่"+ 
          "บ้านเเม่กำปอง มีพื้นที่หมู่บ้านทั้งหมดประมาณ 6.22 ตารางกิโลเมตร ระยะทางห่างจากตัวเมืองเชียงใหม่ 50 กิโลเมตร ด้วยสภาพภูมิประเทศโดยทั่วไปเป็นที่ดอนและระดับความสูงถึง 1,300 เมตรจากระดับน้ำทะเล ทำให้ที่นี่มีอากาศเย็นและชื้นตลอดทั้งปี" +
          "บ้านแม่กำปองเป็นหมู่บ้านที่ทำเมี่ยง กาแฟ และชา เป็นอาชีพหลัก โดยเฉพาะชาที่ชาวบ้านเอาใบมาทำเป็นผลิตภัณฑ์พื้นบ้านอย่างหมอนใบชาสำหรับจำหน่าย ที่นี่ชาวต่างชาตินิยมเดินทางมาสัมผัสวิถีชีวิตที่นี่มากกว่าคนไทยครับ ด้วยการเดินทางทีสะดวกทไมไกลจากเชยงใหม่"+
          "และเสนหททำใหเราเตมอมคอ “ความงามจากธรรมชาต” ภมประเทศของทนเปนทดอนทมภเขาสลบไปมา เวลามองไปทางไหนเรากจะเหนธรรมชาตทสวยงามแปลกตา โดยเฉพาะนำตกแมกำปองทเปรยบเสมอนสายธารนำหลกทหลอเลยงหมบาน นไวทมถง 7 ชน กมความสวยงามไมแพทไหน",
      "clock":
          "เวลาเปิด-ปิด: - เวลาทำการ: - โทรศัพท์: -",
      "location":
          "สถานที่ตั้ง: หมู่บ้านเเม่กำปอง ตำบลห้วยแก้ว อำเภอ แม่ออน เชียงใหม่ 50130",
      "lat":
          "18.86570179922727",
      "lnt":
          "99.35072878123228"
    },
    {
      "name": "ขุนแม่ยะ",
      "picture1": "assets/images/travelB/B4_theplace_1.jpg",
      "picture2": "assets/images/travelB/B4_theplace_2.jpg",
      "picture3": "assets/images/travelB/B4_theplace_3.jpg",
      "picture4": "assets/images/travelB/B4_theplace_4.png",
      "picture5": "assets/images/travelB/B4_theplace_5.png",
      "data": 
          "ขุนแม่ยะ หรือ หน่วยจัดการต้นน้ำขุนแม่ยะ แหล่งดอกพญาเสือโคร่ง หรือซากุระเมืองไทยที่งดงามอีกแห่งหนึ่งของจังหวัดเชียงใหม่ ทางเป็นลูกรัง ขรุขระ ต้องใช้รถกระบะขับเคลื่อนสี่ล้อ"+
          "มีบ้านพัก และจุดกางเต็นท์บริการ ดอกพญาเสือโคร่งจะบานประมาณสัปดาห์ที่ 1-3ของเดือนมกราคม ทั้งนี้ขึ้นอยู่กับสภาพอากาศที่ไม่หนาวจัดเกินไป ดอกสีชมพูบานสะพรั่งเต็มที่ประมาณ 1 สัปดาห์"+
          "พื้นที่ภายในหน่วยซึ่งเป็นสนามหญ้า มีต้นนางพญาเสือโคร่งขึ้นปกคลุมโดยรอบด้านหลังของอุทยานจะพบกับทัศนียภาพของเทือกดอยสูงสลับซับซ้อน หากมองลงมาก็จะเห็นสีชมพูของดอกพญาเสือโคร่งขึ้นแซมสลับกับความเขียวของดงสน"+ 
          "บ่งบอกถึงความอุดมสมบูรณ์ลานกางเต้นท์สามารถนำเต้นท์ส่วนตัวมากลางท่ามกลางดองสีชมพูได้เลย บรรยากาศฟินสุดๆ แต่บริเวณนี้นักท่องเที่ยวจะเดินไปมาถ่ายภาพนางพญาเสือโคร่งค่อนข้างเยอะ  หรือเพื่อความเป็นส่วนตัวจะกางบรเวณปาสนดานหลงหน่วยก็ได้",
      "clock":
          "เวลาเปิด-ปิด: - เวลาทำการ: - โทรศัพท์: 053-217-453,082-184-0878",
      "location": "ตั้งอยู่ระหว่างทางจากแม่มาลัย-ห้วยน้ำดัง-ปาย ประมาณกิโลเมตรที่ 30-40 เลี้ยวซ้ายไปอีกประมาณ 8 กิโลเมตร",
      "lat":
          "19.204085686929112",
      "lnt":
          "98.55778412541643"
    },
    {
      "name": "ดอยหลวงเชียงดาว",
      "picture1": "assets/images/travelB/B5_theplace_1.jpg",
      "picture2": "assets/images/travelB/B5_theplace_2.jpg",
      "picture3": "assets/images/travelB/B5_theplace_3.jpg",
      "picture4": "assets/images/travelB/B5_theplace_4.png",
      "picture5": "assets/images/travelB/B5_theplace_5.png",
      "data": 
          "ดอยหลวงเชียงดาว  โดยเมื่อก่อนนั้น ดอยเชียงดาว จะถูกเรียกว่า ดอยอ่างสลุง ซึ่งว่ากันว่าเป็นสถานที่ที่สมเด็จพระสัมมาสัมพุทธเจ้า เสด็จมาพร้อมกับพระอรหันต์ทั้ง 8 องค์ และทรงลงสรงน้ำในสลุงทองคำหรือบริเวณอ่างสลุงนั่นเอง"+
          "แต่บางคนก็เรียกดอยนี้ว่า ดอยหลวง เพราะเป็นดอยที่มีขนาดใหญ่ คำว่า หลวง แปลว่า ใหญ่ นั่นเอง และต่อมาก็เพี้ยนเป็น ดอยหลวงเพียงดาว จนในปัจจุบันได้กลายมาเป็น ดอยหลวงเชียงดาว ในที่สุด ดอยหลวงเชียงดาว นับว่าเป็นภูเขาหินปูนล้วนๆ และเป็นส่วนหนึ่งของเทือกเขาถนนธงชัย"+ 
          "เกิดขึ้นในยุคของเพอร์เมียน มีอายุราวๆ 230 - 250 ล้านปีนอกจาก ยอดดอยหลวงเชียงดาว แล้วก็ยังมียอดเขาอื่นๆ อีก ไม่ว่าจะเป็น ดอยกิ่วลม ดอยเหนือ ดอยหนอก และ ดอยสามพี่น้อง ส่วนยอดเขาที่สามารถขึ้นไปเที่ยวได้นั้น จะมียอดดอยกิ่วลม" +
          "ที่เป็นจุดชมวิวพระอาทิตย์ขึ้นและทะเลหมอกยามเช้าที่สวยมากๆ และ ยอดดอยหลวงเชียงดาว ก็เป็นจุดชมวิวพระอาทิตย์ตกนั่นเอง",
      "clock":
          "เวลาทำการ: ทางเขตรักษาพันธุ์สัตว์ป่าเชียเชียงดาวเปิดให้ท่องเที่ยวได้เป็นเวลา 5 เดือนตั้งแต่วันที่ 1 พ.ย. ถึง 31 มี.ค. ของทุกปี",
      "location":
          "สถานที่ตั้ง: ดอยหลวงเชียงดาว ตำบลเชียงดาว อำเภอเชียงดาว จังหวัดเชียงใหม่",
      "lat":
          "19.401051883874185",
      "lnt":
          "98.87611104673606"
    },
    {
      "name": "ดอยอ่างขาง",
      "picture1": "assets/images/travelB/B6_theplace_1.jpg",
      "picture2": "assets/images/travelB/B6_theplace_2.jpg",
      "picture3": "assets/images/travelB/B6_theplace_3.png",
      "picture4": "assets/images/travelB/B6_theplace_4.png",
      "picture5": "assets/images/travelB/B6_theplace_5.png",
      "data": 
          "ดอยอ่างขางเป็นสถานที่ท่องเที่ยวยอดนิยมแห่งหนึ่งของจังหวัดเชียงใหม่ (Chiang Mai Province) ตั้งอยู่บนทางหลวงหมายเลข 107 (เชียงใหม่-ฝาง) ทางขึ้นดอยอ่างขางค่อนข้างคดเคี้ยวและชัน การขับรถไปเองจึงต้องระมัดระวังอย่างมาก ดอยอ่างขางมีอากาศเย็นสบายตลอดปี ช่วงหน้าหนาวจะเย็นจัด หากไปเที่ยวช่วงหน้าหนาวก็ต้องเตรียมพร้อมเรื่องอุปกรณ์กันหนาวให้ดี"+
          "สถานที่ท่องเที่ยวดอยอ่างขาง สถานีเกษตรหลวงอ่างขาง เป็นพื้นที่สาธิตการเพาะปลูกพืชดอก และผลไม้เมืองหนาวสวนบอนไซ ตั้งอยู่ด้านหน้าสถานี สวนแห่งนี้มีพืชเมืองหนาวและพืชเขตอบอุ่นปลูกไว้มากมาย ซึ่งทั้งหมดได้รับการตกแต่งตัดและปลูกด้วยเทคนิคบอนไซ การเที่ยวชมสวนบอนไซผู้เข้าชมยังสามารถชมสวนสมุนไพร เวลาที่ดีที่สุดในการเข้าชมคือตั้งแต่เดือนพฤศจิกายนถึงเดือนมกราคม"+ 
          "จุดชมวิวกิ่วลม สามารถมองเห็นวิวทิวทัศน์ที่สวยงามของเทือกเขา ที่จุดชมวิวกิ่วลมนี้สามารถชมพระอาทิตย์ขนและพระอาทตยตกได รวมถงทะเลหมอกในชวงหนาหนาว หมบานคม ตงอยใกลกบสถานฯ เปนชมชนเลก ๆ ประกอบดวยผอยอาศยหลายเชอชาตอยรวมกน อาท ชาวไทยใหญ ชาวพมา และชาวจนฮอ เปดรานคาบรการแกนกทองเทยว บนดอยอางขางนน นอกจากชมววและชมตนไมดอกไมแลว",
      "clock": "เวลาเปิด-ปิด: 8:00-18:00 โทรศัพท์: 053-450107-9",
      "location":
          "สถานที่ตั้ง: ถนนเชียงใหม่-ฝาง บ้านฝาง, เชียงใหม่  50320",
      "lat":
          "19.87069028527936",
      "lnt":
          "99.05504286223264"
    },
    {
      "name": "ดอยม่อนแจ่ม",
      "picture1": "assets/images/travelB/B2_theplace_1.jpg",
      "picture2": "assets/images/travelB/B2_theplace_2.png",
      "picture3": "assets/images/travelB/B2_theplace_3.png",
      "picture4": "assets/images/travelB/B2_theplace_4.png",
      "picture5": "assets/images/travelB/B2_theplace_5.png",
      "data": 
          "ม่อนแจ่ม ตั้งอยู่บนสันเขาบริเวณหมู่บ้านม้งหนองหอย อำเภอแม่ริม จังหวัดเชียงใหม่ ตั้งอยู่ห่างจากตัวเมือง เชียงใหม่ใช้เวลาในการเดินทางประมาณ 40 นาที ไปถึงม่อนแจ่ม มีอากาศเย็นสบายตลอดทั้งปี อีกทั้งก็ยังมีหมอกในตอนเช้านับเป็นการต้อนรับเช้าวันใหม่ที่สดใส" +
          "และที่นี่ก็ยังมีจุดชมวิวที่สามารถมองเห็น วิวทิวทัศน์ได้อย่างชัดเจนอีกด้วย โดยเฉพาะทิวเขาที่สลับกันไกลจนสุดลูกหูลูกตา ซึ่งเมื่อมองลงไปที่ด้านล่างทางทิศใต้ก็จะพบกับหมู่บ้านม้งหนองหอย และ พื้นที่ศูนย์พัฒนาโครงการหลวงหนองหอยโดยรอบ เป็นแปลงปลูกผักและวิจัยพืชเมืองหนาว" +
          "ก็ขอแนะนำว่าให้เดินทางมาเที่ยวในช่วงเดือนตุลาคม - กุมภาพันธ์ แถมบรรยากาศก็จะเย็นสบายได้ที่ และนอกจากนี้ก็ยังมีสถานที่ท่องเที่ยว รวมไปถึงที่พักอีกหลากหลายที่ตั้งอยู่ในบริเวณโดยรอบ ม่อนแจ่ม ส่วนการเดินทางขึ้นเขาไปม่อนแจ่มนั้น บางช่วงชันมากและหักศอก " +
          "ถนนค่อนข้างแคบรถสวนกันลำบาก ที่จอดรถบนม่อนแจ่มตรงร้านอาหารมีจำกัด และถ้าขึ้นไปตรงกับช่วงเวลาอาหาร เพราะที่จอดรถจะเต็ม และก็ต้องจอดรถด้านล่างแล้วเดินขึ้นเขาค่อนข้างชันไปประมาณ 100 เมตร ถ้าไม่อยากเดินขึ้นเขา ก็มีมอเตอร์ไซค์รับจ้างคันละ 20 บาทพาขึ้นเขาไปบนม่อนแจ่ม",
      "clock":
          "เวลาเปิด-ปิด: 07:00-20:00 เวลาทำการ: ทุกวัน โทรศัพท์: 0879324440",
      "location":
          "สถานที่ตั้ง: 84หมู่7 ต.แม่แรม อ.เเม่ริม จ.เชียงใหม่ 50180",
      "lat":
          "18.93599278591945",
      "lnt":
          "98.82244156698698"
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
                  builder: (context) => TheplaceTravelB(
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