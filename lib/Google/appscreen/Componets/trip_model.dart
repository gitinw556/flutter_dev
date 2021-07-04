import 'package:google_maps_flutter/google_maps_flutter.dart';

class TravelData1 {
  String numT;
  String name;
  String address;
  String clock;
  String day;
  String phone;
  final photo;
  LatLng location;
  int starttime;
  int endtime;
  final weatherphoto;
  String weatherstate;
  String weathertemp;
  String weatherchance;
  String weatherhum;
  String weatherwind;
  final weathericon;
  String weathermax;
  String weathermin;

  TravelData1(
      {this.numT,
      this.name,
      this.address,
      this.clock,
      this.day,
      this.phone,
      this.photo,
      this.location,
      this.starttime,
      this.endtime,
      this.weatherphoto,
      this.weatherstate,
      this.weathertemp,
      this.weatherchance,
      this.weatherhum,
      this.weatherwind,
      this.weathericon,
      this.weathermax,
      this.weathermin});
}

class TravelDataMixin1 {
  List<TravelData1> travelData = [
    TravelData1(
      numT: '2',
      name: 'วัดพระธาตุดอยคำ',
      address: 'สถานที่ตั้ง: 108หมู่3 ต.แม่เหียะ อ.เมือง จ.เชียงใหม่ 50100',
      clock: 'เวลาเปิด-ปิด: 06:00-18:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053-263-001',
      photo: 'assets/images/travelA/A2_theplace_1.jpeg',
      location: LatLng(18.75970952374555, 98.91866929657218),
      starttime: 5,
      endtime: 17,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '30',
      weatherchance: 'โอกาสฝนตก: 40%',
      weatherhum: 'ความชื้น: 62%',
      weatherwind: 'ลม 14.2 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '32',
      weathermin: '26',
    ),
    TravelData1(
      numT: '14',
      name: 'จังเกิลโคสเตอร์',
      address: 'สถานที่ตั้ง: 99/9 หมู่ 2 ต.โป่งแยง อ.แม่ริม จ.เชียงใหม่',
      clock: 'เปิดทุกวัน 09.00-17.00',
      day: 'คาเฟ่เปิดทุกวัน 09.00-18.00',
      phone: 'โทรศัพท์: 092-973-8868',
      photo: 'assets/images/travelC/C2_theplace_1.jpg',
      location: LatLng(18.91708732131294, 98.82158264075271),
      starttime: 8,
      endtime: 17,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '28',
      weatherchance: 'โอกาสฝนตก: 9%',
      weatherhum: 'ความชื้น: 84%',
      weatherwind: 'ลม 10.9 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '30',
      weathermin: '20',
    ),
    TravelData1(
      numT: '8',
      name: 'ดอยม่อนแจ่ม',
      address: 'สถานที่ตั้ง: 84หมู่7 ต.แม่แรม อ.เเม่ริม จ.เชียงใหม่ 50180',
      clock: 'เวลาเปิด-ปิด: 07:00-20:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 0879324440',
      photo: 'assets/images/travelB/B2_theplace_1.jpg',
      location: LatLng(18.93599278591945, 98.82244156698698),
      starttime: 6,
      endtime: 19,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '19',
      weatherchance: 'โอกาสฝนตก: 11%',
      weatherhum: 'ความชื้น: 89%',
      weatherwind: 'ลม 3.41 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '25',
      weathermin: '18',
    ),
  ];
}

class TravelData2 {
  String numT;
  String name;
  String address;
  String clock;
  String day;
  String phone;
  final photo;
  LatLng location;
  int starttime;
  int endtime;
  final weatherphoto;
  String weatherstate;
  String weathertemp;
  String weatherchance;
  String weatherhum;
  String weatherwind;
  final weathericon;
  String weathermax;
  String weathermin;

  TravelData2(
      {this.numT,
      this.name,
      this.address,
      this.clock,
      this.day,
      this.phone,
      this.photo,
      this.location,
      this.starttime,
      this.endtime,
      this.weatherphoto,
      this.weatherstate,
      this.weathertemp,
      this.weatherchance,
      this.weatherhum,
      this.weatherwind,
      this.weathericon,
      this.weathermax,
      this.weathermin});
}

class TravelDataMixin2 {
  List<TravelData2> travelData = [
    TravelData2(
      numT: '20',
      name: 'ไร่สตอเบอร์รี่ บ้านนอแล',
      address: 'สถานที่ตั้ง: บ้านนอแล ต.แม่งอน อ.ฝาง จ.เชียงใหม่',
      clock: 'เวลาเปิด-ปิด: 7:00-16:00',
      day: 'เวลาทำการ : ทุกวัน',
      phone: 'โทรศัพท์: -',
      photo: 'assets/images/travelD/D2_theplace_1.jpg',
      location: LatLng(19.93012104369856, 99.0349563677604),
      starttime: 6,
      endtime: 15,
      weatherphoto: 'assets/weather/weather6.jpg',
      weatherstate: 'พายุฝนฟ้าคะนอง',
      weathertemp: '22',
      weatherchance: 'โอกาสฝนตก: 90%',
      weatherhum: 'ความชื้น: 98%',
      weatherwind: 'ลม 12.8 km/hr',
      weathericon: 'assets/weather/storm.png',
      weathermax: '25',
      weathermin: '12',
    ),
    TravelData2(
      numT: '12',
      name: 'ดอยอ่างขาง',
      address: 'สถานที่ตั้ง: ถนนเชียงใหม่-ฝาง บ้านฝาง, เชียงใหม่  50320',
      clock: 'เวลาเปิด-ปิด: 8:00-18:00',
      day: 'เวลาทำการ: ไม่มีเวลาทำการ',
      phone: 'โทรศัพท์: 053-450107-9',
      photo: 'assets/images/travelB/B6_theplace_1.jpg',
      location: LatLng(19.87069028527936, 99.05504286223264),
      starttime: 7,
      endtime: 17,
      weatherphoto: 'assets/weather/weather6.jpg',
      weatherstate: 'พายุฝนฟ้าคะนอง',
      weathertemp: '17',
      weatherchance: 'โอกาสฝนตก: 90%',
      weatherhum: 'ความชื้น: 98%',
      weatherwind: 'ลม 3.21 km/hr',
      weathericon: 'assets/weather/storm.png',
      weathermax: '22',
      weathermin: '14',
    ),
    TravelData2(
      numT: '9',
      name: 'แม่กำปอง',
      address:
          'สถานที่ตั้ง: หมู่บ้านเเม่กำปอง ตำบลห้วยแก้ว อำเภอ แม่ออน เชียงใหม่ 50130',
      clock: 'เวลาเปิด-ปิด: ไม่มีกำหนด',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: -',
      photo: 'assets/images/travelB/B3_theplace_1.jpg',
      location: LatLng(18.86570179922727, 99.35072878123228),
      starttime: 9,
      endtime: 16,
      weatherphoto: 'assets/weather/weather3.jpg',
      weatherstate: 'มืดครึ้ม',
      weathertemp: '20',
      weatherchance: 'โอกาสฝนตก: 46%',
      weatherhum: 'ความชื้น: 86%',
      weatherwind: 'ลม 5.11 km/hr',
      weathericon: 'assets/weather/overcast.png',
      weathermax: '29',
      weathermin: '19',
    ),
  ];
}

class TravelData3 {
  String numT;
  String name;
  String address;
  String clock;
  String day;
  String phone;
  final photo;
  LatLng location;
  int starttime;
  int endtime;
  final weatherphoto;
  String weatherstate;
  String weathertemp;
  String weatherchance;
  String weatherhum;
  String weatherwind;
  final weathericon;
  String weathermax;
  String weathermin;

  TravelData3(
      {this.numT,
      this.name,
      this.address,
      this.clock,
      this.day,
      this.phone,
      this.photo,
      this.location,
      this.starttime,
      this.endtime,
      this.weatherphoto,
      this.weatherstate,
      this.weathertemp,
      this.weatherchance,
      this.weatherhum,
      this.weatherwind,
      this.weathericon,
      this.weathermax,
      this.weathermin});
}

class TravelDataMixin3 {
  List<TravelData3> travelData = [
    TravelData3(
      numT: '3',
      name: 'วัดเจดีย์หลวง',
      address:
          'สถานที่ตั้ง: ถนนพระปกเกล้า ตำบลพระสิงห์ อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่ 50200',
      clock: 'เวลาเปิด-ปิด: 08:00-17:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053-814-308',
      photo: 'assets/images/travelA/A3_theplace_1.jpg',
      location: LatLng(18.7871114884228, 98.98675205794059),
      starttime: 7,
      endtime: 16,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '28',
      weatherchance: 'โอกาสฝนตก: 30%',
      weatherhum: 'ความชื้น: 87%',
      weatherwind: 'ลม 14.2 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '32',
      weathermin: '24',
    ),
    TravelData3(
      numT: '15',
      name: 'วันนิมมาน',
      address: 'ถนน นิมมานเหมินทร์ เชียงใหม่ (แยกรินคำ)',
      clock: 'เวลาเปิด-ปิด: 11.00-23.00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 052-080-900',
      photo: 'assets/images/travelC/C3_theplace_1.jpg',
      location: LatLng(18.800354341578608, 98.96822406588905),
      starttime: 10,
      endtime: 22,
      weatherphoto: 'assets/weather/weather7.jpg',
      weatherstate: 'มีเมฆเป็นบางส่วน',
      weathertemp: '31',
      weatherchance: 'โอกาสฝนตก: 8%',
      weatherhum: 'ความชื้น: 30%',
      weatherwind: 'ลม 10.1 km/hr',
      weathericon: 'assets/weather/partly cloudy.png',
      weathermax: '33',
      weathermin: '27',
    ),
    TravelData3(
      numT: '16',
      name: 'ประตูท่าแพ',
      address:
          'สถานที่ตั้ง: ถนน ราชดำเนิน ตำบลศรีภูมิ อำเภอเมืองเชียงใหม่ เชียงใหม่ 50200',
      clock: 'เวลาทำการ: 17:00-22:30',
      day: 'เวลาทำการ: เฉพาะวันอาทิตย์',
      phone: 'โทรศัพท์: -',
      photo: 'assets/images/travelC/C4_theplace_1.jpg',
      location: LatLng(18.787966431079877, 98.99337936588881),
      starttime: 16,
      endtime: 21,
      weatherphoto: 'assets/weather/weather7.jpg',
      weatherstate: 'มีเมฆเป็นบางส่วน',
      weathertemp: '31',
      weatherchance: 'โอกาสฝนตก: 9%',
      weatherhum: 'ความชื้น: 80%',
      weatherwind: 'ลม 13.4 km/hr',
      weathericon: 'assets/weather/partly cloudy.png',
      weathermax: '31',
      weathermin: '28',
    ),
  ];
}
