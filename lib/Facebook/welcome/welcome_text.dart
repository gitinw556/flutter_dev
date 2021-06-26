import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/appscreen/Screen/appscreen.dart';
import 'package:flutter_dev/Facebook/welcome/welcome_button.dart';
import 'package:flutter_dev/color.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Chiang Mai Travel\n" + "ยินดีต้อนรับ",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w700, color: kTextColor),
          ),
          SizedBox(height: 20),
          Text(
            'เพลิดเพลินไปกับสถานที่ท่องเที่ยวในจังหวัดเชียงใหม่ทางแอปพลิเคชันได้นำสถานที่ที่ความสนใจและเป็นที่นิสัยอย่างมากมาแนะนำ ไปดูกันเลย',
            style: TextStyle(fontSize: 16, color: kTextColor),
          ),
          SizedBox(height: 40),
          WelcomeButton(
            tapEvent: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppScreen()));
            },
          )
        ],
      ),
    );
  }
}
