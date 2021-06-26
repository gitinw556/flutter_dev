class TravelItem {
  final String name;
  final String clock;
  final String day;
  final photo;
  final String time;
  TravelItem({
    this.name,
    this.clock,
    this.day,
    this.photo,
    this.time
  });
}

List<TravelItem> loadTravelItem() {
  var fi = <TravelItem>[
    TravelItem(
      name: "วัดพระธาตุดอยสุเทพ",
      clock: "05:00-20:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelA/A1_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "วัดพระธาตุดอยคำ",
      clock: "06:00-18:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelA/A2_theplace_1.jpeg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "วัดเจดีย์หลวง",
      clock: "08:00-17:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelA/A3_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "วัดพระสิงห์",
      clock: "09:00-18:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelA/A4_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "วัดศรีสุพรรณ",
      clock: "06:00–18:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelA/A5_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "วัดสวนดอก",
      clock: "8:00 - 17:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelA/A6_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ดอยอินทนนท์",
      clock: "05:00-18:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelB/B1_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ดอยม่อนแจ่ม",
      clock: "07:00-20:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelB/B2_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ดอยอ่างขาง",
      clock: "08:00-18:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelB/B6_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "แกรนด์แคนยอน เชียงใหม่",
      clock: "09:00-18:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelC/C1_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "จังเกิลโคสเตอร์",
      clock:
          "โซนเครื่องเล่นเปิดบริการทุกวัน จันทร์-ศุกร์ 09:00-17:00 แต่ เสาร์-อาทิตย์ 08:30-17:30 ",
      day: "ส่วนคาเฟ่เปิดบริการทุกวัน 09:00-18:00",
      photo: "assets/images/travelC/C2_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "วันนิมมาน",
      clock: "11:00-23:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelC/C3_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ประตูท่าแพ",
      clock: "17:00-22:30",
      day: "เวลาทำการ: เฉพาะวันอาทิตย์",
      photo: "assets/images/travelC/C4_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ทูบเทรควอเตอร์พาร์ค",
      clock: "11:00-18:30",
      day: "เวลาทำการ: พฤหัสบดี-จันทร์ ปิดทำการ: พุธ",
      photo: "assets/images/travelC/C5_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ฮิโนกิแลนด์",
      clock: "08:00-17:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelC/C6_theplace_1.png",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ไร่ชาลุงเดช",
      clock: "07:30–18:00 เฉพาะเครื่องดื่มและอาหาร",
      day: "ส่วนการเข้าชมไร่ สามารถเข้าชมได้ตลอดทั้งวัน",
      photo: "assets/images/travelD/D1_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "ไร่สตอเบอร์รี่ บ้านนอแล ดอยอ่างขาง",
      clock: "07:00-16:00",
      day: "เวลาทำการ : ทุกวัน",
      photo: "assets/images/travelD/D2_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "สวนพฤกษศาสตร์ สมเด็จพระนางเจ้าสิริกิต์",
      clock: "08:30-16:30",
      day: "เวลาทำการ : ทุกวัน",
      photo: "assets/images/travelD/D4_theplace_1.jpg",
      time: "05:00-06:00",
    ),
    TravelItem(
      name: "สวนกล้วยไม้สายน้ำผึ้ง",
      clock: "08:00-17:00",
      day: "เวลาทำการ: ทุกวัน",
      photo: "assets/images/travelD/D3_theplace_1.jpg",
      time: "05:00-06:00",
    ),
  ];
  return fi;
}