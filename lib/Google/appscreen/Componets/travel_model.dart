import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/icon_map.dart';

class TravelData {
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

  TravelData(
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

class TravelDataMixin {
  List<TravelData> travelData = [
    // TravelData(
    //   numT: '0',
    //   name: 'ตำแหน่งของฉัน',
    //   address: '',
    //   clock: '',
    //   day: '',
    //   phone: '',
    //   photo: 'assets/icons/user.png',
    //   location: LatLng(18.721786155200835, 98.96306134869909),
    //   starttime: 0,
    //   endtime: 0
    // ),
    TravelData(
      numT: '1',
      name: 'วัดพระธาตุดอยสุเทพ',
      address:
          'สถานที่ตั้ง: 9หมู่9 ถนน.ศรีวิชัย ต.สุเทพ อ.เมืองเชียงใหม่ จ.เชียงใหม่ 50200',
      clock: 'เวลาเปิด-ปิด: 05:00-20:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053-295-002',
      photo: 'assets/images/travelA/A1_theplace_1.jpg',
      location: LatLng(18.805019355671494, 98.92158005239567),
      starttime: 4,
      endtime: 19,
      weatherphoto: 'assets/weather/weather7.jpg',
      weatherstate: 'มีเมฆบางส่วน',
      weathertemp: '28',
      weatherchance: 'โอกาสฝนตก: 32%',
      weatherhum: 'ความชื้น: 64%',
      weatherwind: 'ลม 5.11 km/hr',
      weathericon: 'assets/weather/partly cloudy.png',
      weathermax: '31',
      weathermin: '26',
    ),
    TravelData(
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
    TravelData(
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
    TravelData(
      numT: '4',
      name: 'วัดพระสิงห์',
      address:
          'สถานที่ตั้ง: ถนนสามล้าน ตำบลพระสิงห์ อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่',
      clock: 'เวลาเปิด-ปิด: 9:00-18:00น.',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053-416-027',
      photo: 'assets/images/travelA/A4_theplace_1.jpg',
      location: LatLng(18.788610668210964, 98.98200177064842),
      starttime: 8,
      endtime: 17,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '28',
      weatherchance: 'โอกาสฝนตก: 9%',
      weatherhum: 'ความชื้น: 90%',
      weatherwind: 'ลม 3.64 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '31',
      weathermin: '26',
    ),
    TravelData(
      numT: '5',
      name: 'วัดศรีสุพรรณ',
      address:
          'สถานที่ตั้ง: ตั้งอยู่บนถนนวัวลาย ตำบลหายยา อำเภอเมือง จังหวัดเชียงใหม่ 50100',
      clock: 'เวลาเปิด-ปิด: 6:00–18:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053-274-705',
      photo: 'assets/images/travelA/A5_theplace_1.jpg',
      location: LatLng(18.778965141645426, 98.98364681006606),
      starttime: 5,
      endtime: 17,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '25',
      weatherchance: 'โอกาสฝนตก: 9%',
      weatherhum: 'ความชื้น: 70%',
      weatherwind: 'ลม 4.0 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '30',
      weathermin: '24',
    ),
    TravelData(
      numT: '6',
      name: 'วัดสวนดอก',
      address:
          'สถานที่ตั้ง: ถนนสุเทพ ตำบลสุเทพ อำเภอเมือง จังหวัดเชียงใหม่ 50200',
      clock: 'เวลาเปิด-ปิด: 8:00 - 17:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053-278-304',
      photo: 'assets/images/travelA/A6_theplace_1.jpg',
      location: LatLng(18.78829963016687, 98.96779408307924),
      starttime: 7,
      endtime: 16,
      weatherphoto: 'assets/weather/weather7.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '27',
      weatherchance: 'โอกาสฝนตก: 8%',
      weatherhum: 'ความชื้น: 87%',
      weatherwind: 'ลม 10.00 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '30',
      weathermin: '26',
    ),
    TravelData(
      numT: '7',
      name: 'ดอยอินทนนท์',
      address: 'สถานที่ตั้ง: ต.บ้านหลวง อ.จอมทอง จ.เชียงใหม่ 50160',
      clock: 'เวลาเปิด-ปิด: 05:00-18:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053286728',
      photo: 'assets/images/travelB/B1_theplace_1.jpg',
      location: LatLng(18.588571343706793, 98.48714697716098),
      starttime: 4,
      endtime: 17,
      weatherphoto: 'assets/weather/weather5.jpg',
      weatherstate: 'ฝนตกเบาบาง',
      weathertemp: '20',
      weatherchance: 'โอกาสฝนตก: 34%',
      weatherhum: 'ความชื้น: 90%',
      weatherwind: 'ลม 6.33 km/hr',
      weathericon: 'assets/weather/rain.png',
      weathermax: '26',
      weathermin: '17',
    ),
    TravelData(
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
    TravelData(
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
    TravelData(
      numT: '10',
      name: 'ขุนแม่ยะ',
      address:
          'ตั้งอยู่ระหว่างทางจากแม่มาลัย-ห้วยน้ำดัง-ปาย ประมาณกิโลเมตรที่ 30-40 เลี้ยวซ้ายไปอีกประมาณ 8 กิโลเมตร',
      clock: 'เวลาเปิด-ปิด: ไม่มีกำหนด',
      day: 'เวลาทำการ: ไม่มีเวลาทำการ',
      phone: 'โทรศัพท์: 053-217-453',
      photo: 'assets/images/travelB/B4_theplace_1.jpg',
      location: LatLng(19.204085686929112, 98.55778412541643),
      starttime: 9,
      endtime: 16,
      weatherphoto: 'assets/weather/weather3.jpg',
      weatherstate: 'มืดครึ้ม',
      weathertemp: '17',
      weatherchance: 'โอกาสฝนตก: 72%',
      weatherhum: 'ความชื้น: 96%',
      weatherwind: 'ลม 5.89 km/hr',
      weathericon: 'assets/weather/overcast.png',
      weathermax: '22',
      weathermin: '13',
    ),
    TravelData(
      numT: '11',
      name: 'ดอยหลวงเชียงดาว',
      address:
          'สถานที่ตั้ง: ดอยหลวงเชียงดาว ตำบลเชียงดาว อำเภอเชียงดาว จังหวัดเชียงใหม่',
      clock: 'เวลาเปิด-ปิด: ไม่มีกำหนด',
      day: 'เวลาทำการ: ตามกำหนด',
      phone: 'โทรศัพท์: -',
      photo: 'assets/images/travelB/B5_theplace_1.jpg',
      location: LatLng(19.401051883874185, 98.87611104673606),
      starttime: 11,
      endtime: 17,
      weatherphoto: 'assets/weather/weather5.jpg',
      weatherstate: 'ฝนตกเบาบาง',
      weathertemp: '19',
      weatherchance: 'โอกาสฝนตก: 57%',
      weatherhum: 'ความชื้น: 90%',
      weatherwind: 'ลม 6.47 km/hr',
      weathericon: 'assets/weather/rain.png',
      weathermax: '24',
      weathermin: '14',
    ),
    TravelData(
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
    TravelData(
      numT: '13',
      name: 'แกรนด์แคนยอน เชียงใหม่',
      address:
          'สถานที่ตั้ง: 202 หมู่ 3 หมู่บ้านแพะขวาง ตำบลน้ำแพร่ อำเภอหางดง จังหวัดเชียงใหม่',
      clock: 'เวลาเปิด-ปิด: 09.00-18.00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 061–796-3999',
      photo: 'assets/images/travelC/C1_theplace_1.jpg',
      location: LatLng(18.696994790938167, 98.89304369657093),
      starttime: 8,
      endtime: 17,
      weatherphoto: 'assets/weather/weather4.jpg',
      weatherstate: 'มีแดดเป็นส่วนมาก',
      weathertemp: '30',
      weatherchance: 'โอกาสฝนตก: 15%',
      weatherhum: 'ความชื้น: 52%',
      weatherwind: 'ลม 10.08 km/hr',
      weathericon: 'assets/weather/sunny.png',
      weathermax: '33',
      weathermin: '29',
    ),
    TravelData(
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
    TravelData(
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
      weathermax: '35',
      weathermin: '27',
    ),
    TravelData(
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
    TravelData(
      numT: '17',
      name: 'ทูบเทรควอเตอร์พาร์ค',
      address:
          'สถานที่ตั้ง: ถนนบ่อสร้าง ซอย 10 ตำบลต้นเปา อำเภอสันกำแพง เชียงใหม่ 50130',
      clock: 'เวลาเปิด-ปิด: 11:00-18:30',
      day: 'พฤหัสบดี-จันทร์ ปิด: พุธ',
      phone: 'โทรศัพท์: 052-010-123',
      photo: 'assets/images/travelC/C5_theplace_1.jpg',
      location: LatLng(18.76505051698724, 99.09695155239487),
      starttime: 10,
      endtime: 17,
      weatherphoto: 'assets/weather/weather4.jpg',
      weatherstate: 'มีแดดเป็นส่วนมาก',
      weathertemp: '32',
      weatherchance: 'โอกาสฝนตก: 32%',
      weatherhum: 'ความชื้น: 71%',
      weatherwind: 'ลม 2.8 km/hr',
      weathericon: 'assets/weather/sunny.png',
      weathermax: '34',
      weathermin: '29',
    ),
    TravelData(
      numT: '18',
      name: 'ฮิโนกิแลนด์',
      address:
          'สถานที่ตั้ง: 168 บ้านร้องธาร, ศรีดงเย็น, อำเภอ ไชยปราการ เชียงใหม่ 50320',
      clock: 'เวลาเปิด-ปิด: 8:00-17:00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 094-731-0731',
      photo: 'assets/images/travelC/C6_theplace_1.png',
      location: LatLng(19.656036948984962, 99.14801641193216),
      starttime: 7,
      endtime: 16,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '28',
      weatherchance: 'โอกาสฝนตก: 15%',
      weatherhum: 'ความชื้น: 98%',
      weatherwind: 'ลม 3.44 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '31',
      weathermin: '23',
    ),
    TravelData(
      numT: '19',
      name: 'ไร่ชาลุงเดช',
      address:
          'สถานที่ตั้ง: ไร่ชาลุงเดช ตำบลเมืองก๋าย อำเภอแม่แตง จังหวัดเชียงใหม่ 50150',
      clock: 'เครื่องดื่ม: 7.30 – 18.00 ',
      day: 'สามารถเข้าชมได้ตลอดทั้งวัน',
      phone: '',
      photo: 'assets/images/travelD/D1_theplace_1.jpg',
      location: LatLng(19.206192684072665, 98.79495729473261),
      starttime: 6,
      endtime: 17,
      weatherphoto: 'assets/weather/weather5.jpg',
      weatherstate: 'ฝนตกเบาบาง',
      weathertemp: '27',
      weatherchance: 'โอกาสฝนตก: 58%',
      weatherhum: 'ความชื้น: 90%',
      weatherwind: 'ลม 6.37 km/hr',
      weathericon: 'assets/weather/rain.png',
      weathermax: '32',
      weathermin: '23',
    ),
    TravelData(
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
    TravelData(
      numT: '21',
      name: 'สวนกล้วยไม้สายน้ำผึ้ง',
      address:
          'สถานที่ตั้ง: สวนกล้วยไม้สายน้ำผึ้งออร์คิ 61 หมู่ 6 ตำบล ริมใต้ อำเภอแม่ริม เชียงใหม่ 50180',
      clock: 'เวลาทำการ: 8.00-17.00',
      day: 'เวลาทำการ: ทุกวัน',
      phone: 'โทรศัพท์: 053-297152',
      photo: 'assets/images/travelD/D3_theplace_1.jpg',
      location: LatLng(19.049081052916353, 98.96296717969085),
      starttime: 7,
      endtime: 16,
      weatherphoto: 'assets/weather/weather1.jpg',
      weatherstate: 'มีเมฆเป็นส่วนมาก',
      weathertemp: '31',
      weatherchance: 'โอกาสฝนตก: 11%',
      weatherhum: 'ความชื้น: 78%',
      weatherwind: 'ลม 10.7 km/hr',
      weathericon: 'assets/weather/mostly cloudy.png',
      weathermax: '34',
      weathermin: '24',
    ),
    TravelData(
      numT: '22',
      name: 'สวนพฤกษศาสตร์ ',
      address:
          'สถานที่ตั้ง : 100 หมู่ 9 ตำบล แม่แรม อำเภอแม่ริม เชียงใหม่ 50180',
      clock: 'เวลาเปิด-ปิด: 8:30 - 16:30',
      day: 'เวลาทำการ : ทุกวัน',
      phone: 'โทรศัพท์: 053-841-234',
      photo: 'assets/images/travelD/D4_theplace_1.jpg',
      location: LatLng(18.923751034832065, 98.85852204958283),
      starttime: 7,
      endtime: 15,
      weatherphoto: 'assets/weather/weather4.jpg',
      weatherstate: 'มีแดดเป็นส่วนมาก',
      weathertemp: '31',
      weatherchance: 'โอกาสฝนตก: 11%',
      weatherhum: 'ความชื้น: 56%',
      weatherwind: 'ลม 10.9 km/hr',
      weathericon: 'assets/weather/sunny.png',
      weathermax: '32',
      weathermin: '29',
    )
  ];
}
