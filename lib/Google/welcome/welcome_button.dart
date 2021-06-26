import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton( {
    Key key, 
    @required this.tapEvent
}) : super(key: key);
        
          final GestureTapCallback tapEvent;
        
          @override
          Widget build(BuildContext context) {
            return InkWell(
              onTap: tapEvent,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.blue,
                ),
                width: 180,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ถัดไป",
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Image.asset(
                        'assets/images/arrow.png',
                        fit: BoxFit.scaleDown,
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        }