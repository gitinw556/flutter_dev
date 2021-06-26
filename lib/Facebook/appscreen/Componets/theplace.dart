import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/TheplaceTravel/theplacetravel.dart';

class ThePlace extends StatefulWidget {
  @override
  _ThePlaceState createState() => _ThePlaceState();
}

class _ThePlaceState extends State<ThePlace> {
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
          "สถานที่ตั้ง: ต.บ้านหลวง อ.จอมทอง จ.เชียงใหม่ 50160"
    },
    {
      "name": "วัดพระธาตุดอยสุเทพ",
      "picture1": "assets/images/travelA/A1_theplace_1.jpg",
      "picture2": "assets/images/travelA/A1_theplace_2.png",
      "picture3": "assets/images/travelA/A1_theplace_3.png",
      "picture4": "assets/images/travelA/A1_theplace_4.png",
      "picture5": "assets/images/travelA/A1_theplace_5.png",
      "data": 
          "วัดพระธาตุดอยสุเทพราชวรวิหาร (คำเมือง: LN-Wat Phra That Doi Suthep.png) พระอารามหลวง ชั้นโท ชนิดราชวรวิหาร ตั้งอยู่ในอุทยานแห่งชาติดอยสุเทพ-ปุย" +
          "วัดมีความสูงจากระดับที่ราบเชียงใหม่ราว 689 เมตร และมีความสูงจากระดับน้ำทะเลปานกลาง 1,046 เมตร เป็นหนึ่งในวัดที่มีความสำคัญมากที่สุดของจังหวัดเชียงใหม่ ก่อสร้างตามแบบศิลปะล้านนา" +
          "มีเจดีย์ทรงเชียงแสน ฐานสูงย่อมุมระฆังทรงแปดเหลี่ยมปิดด้วยทองจังโก 2 ชั้น ลานเจดีย์เป็นจุดชมทิวทัศน์เมืองเชียงใหม่ ทางขึ้นเป็นบันไดนาคเจ็ดเศียรก่อปูน เจ้าอาวาสรูปปัจจุบันคือพระธรรมเสนาบดี (ธงชัย สุวณฺณสิริ)" +
          "วัดพระธาตุดอยสุเทพ สร้างขึ้นเมื่อปี พ.ศ. 1927 (จ.ศ. 746) ในสมัยพญากือนา กษัตริย์องค์ที่ 6 แห่งอาณาจักรล้านนา ราชวงศ์มังราย พระองค์ทรงได้อัญเชิญพระบรมสารีริกธาตุองค์ใหญ่" +
          "ที่ได้ทรงเก็บไว้สักการบูชาส่วนพระองค์ถึง 13 ปี มาบรรจุไว้ที่นี่ ด้วยการทรงอธิษฐานเสี่ยงช้างมงคลเพื่อเสี่ยงทายสถานที่ประดิษฐาน พอช้างมงคลเดินมาถึงยอดดอยสุเทพ มันก็ร้องสามครั้ง" +
          "พร้อมกับทำประทักษิณสามรอบ แล้วล้มลง พระองค์จึงโปรดเกล้าฯให้ขุดดินลึก 8 ศอก กว้าง 6 วา 3 ศอก หาแท่นหินใหญ่ 6 แท่น มาวางเป็นรูปหีบใหญ่ในหลุม แล้วอัญเชิญพระบรมสารีริกธาตุลงประดิษฐานไว้" +
          "จากนั้นถมด้วยหิน แล้วก่อพระเจดีย์สูง 5 วา ครอบบนนั้น ด้วยเหตุนี้จึงห้ามพุทธศาสนิกชนที่ไปนมัสการสวมรองเท้าในบริเวณพระธาตุ และมิให้สตรีเข้าไปบริเวณนั้น ",
      "clock":
          "เวลาเปิด-ปิด: 05:00-20:00 เวลาทำการ: ทุกวัน โทรศัพท์: 053295002",
      "location":
          "สถานที่ตั้ง: 9หมู่9 ถนน.ศรีวิชัย ต.สุเทพ อ.เมืองเชียงใหม่ จ.เชียงใหม่ 50200"
    },
    {
      "name": "วัดพระธาตุดอยคำ",
      "picture1": "assets/images/travelA/A2_theplace_1.jpeg",
      "picture2": "assets/images/travelA/A2_theplace_2.png",
      "picture3": "assets/images/travelA/A2_theplace_3.jpg",
      "picture4": "assets/images/travelA/A2_theplace_4.jpg",
      "picture5": "assets/images/travelA/A2_theplace_5.jpg",
      "data": 
          "วัดพระธาตุดอยคำ เป็นวัดสำคัญในจังหวัดเชียงใหม่ อายุเก่าแก่กว่า 1,300 ปี ตั้งอยู่บริเวณดอยคำ ด้านหลังอุทยานหลวงราชพฤกษ์ ห่างจากตัวเมืองประมาณ 10 กิโลเมตร วัดพระธาตุดอยคำมีความสูงจากระดับที่ราบเชียงใหม่ราว 140 เมตร" +
          "และมีความสูงจากระดับน้ำทะเลปานกลาง 465 เมตร วัดพระธาตุดอยคำมีลานชมวิวที่สามารถมองเห็นวิวทิวทัศน์รอบเมืองเชียงใหม่ และยังเป็นที่ประดิษฐานพระเจ้าทันใจซึ่งมีอายุเก่าแก่กว่าห้าร้อยปี วัดพระธาตุดอยคำสร้างในปี พ.ศ. 1230 " +
          "รัชสมัยพระนางจามเทวีกษัตริย์แห่งหริภุญชัย โดยพระโอรสทั้ง 2 เป็นผู้สร้าง ประกอบด้วยเจดีย์บรรจุพระบรมสารีริกธาตุของพระพุทธเจ้า ศาลาการเปรียญกุฏิสงฆ์ และพระพุทธรูปปูนปั้น เดิมชื่อวัดสุวรรณบรรพต แต่ชาวบ้านเรียกว่า" "วัดดอยคำ" +
          "พ.ศ. 2509 ขณะนั้นวัดดอยคำเป็นวัดร้าง ต่อมากรุแตกชาวบ้านพบโบราณวัตถุหลายชิ้น เช่น พระรอดหลวง พระหินทรายปิดทององค์ใหญ่ พระสามหมอ (เนื้อดิน) ซึ่งนำมาประดิษฐานไว้ ณ วัดพระธาตุดอยคำ พระธาตุดอยคำนอกจากจะเป็นที่สักการบูชาของคนท้องถิ่นแล้ว" +
          "ยังเป็นสัญลักษณ์อีกแห่งหนึ่งของการบินไทยที่ใช้กำหนดพื้นที่ทางสายตา ก่อนที่จะนำเครื่องบินลงจอดที่สนามบินเชียงใหม่ ประจำทุกปี โดยยึดถือเอาวันแรม 7 ค่ำ 8 ค่ำ หลังวันวิสาขบูชาทุกปี เป็นวันสรงน้ำพระธาตุ ซึ่งถือว่าเป็นวันถวายพระเพลิงพระพุทธศรีระของ" +
          "สมเด็จพระสัมมาสัมพุทธเจ้า (หลังเสด็จดับขันธปรินิพพานได้ 8 วัน) ถือเป็นวันสำคัญในพระพุทธศาสนาวันหนึ่ง ตรงกับวันแรม 8 ค่ำ เดือนวิสาขะ (เดือน 6 ของไทย) ทางวัดพระธาตุดอยคำ จึงยึดถือเอาวันนี้จัดงาน และพิธีสรงน้ำเพื่อรำลึกนึกถึง พุทธคุณ ธรรมคุณ สังฆคุณ" +
          "ที่ท่านได้สร้างเผยแพร่พระพุทธศาสนาเอาไว้",
      "clock":
          "เวลาเปิด-ปิด: 06:00-18:00 เวลาทำการ: ทุกวัน โทรศัพท์: 053263001, 053248604, 05324860",
      "location":
          "สถานที่ตั้ง: 108หมู่3 ต.แม่เหียะ อ.เมือง จ.เชียงใหม่ 50100"
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
          "สถานที่ตั้ง: 84หมู่7 ต.แม่แรม อ.เเม่ริม จ.เชียงใหม่ 50180"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: theplace_list.length,
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
              theP_location: theplace_list[index]['location']
          );
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
                  builder: (context) => TheplaceTravel(
                        theP_T_name: theP_name,
                        theP_T_picture1: theP_picture1,
                        theP_T_picture2: theP_picture2,
                        theP_T_picture3: theP_picture3,
                        theP_T_picture4: theP_picture4,
                        theP_T_picture5: theP_picture5,
                        theP_T_data: theP_data,
                        theP_T_clock: theP_clock,
                        theP_T_location: theP_location
                      ))),
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
