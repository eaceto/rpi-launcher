import 'package:eaceto_rpi_springboard/widgets/home/today/today.dart';
import 'package:flutter/material.dart';

class SpringBoardTodayClockWidget extends StatefulWidget {
  @override
  _SpringBoardTodayClockWidgetState createState() =>
      _SpringBoardTodayClockWidgetState();
}

class _SpringBoardTodayClockWidgetState
    extends State<SpringBoardTodayClockWidget> {
  @override

  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: new BoxConstraints(
        minHeight: SpringBoardTodayWidget.singleWidgetWidth,
        minWidth: 0,
        maxWidth: SpringBoardTodayWidget.singleWidgetWidth,
    ),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          backgroundBlendMode: BlendMode.colorBurn,
          color: Colors.grey),
      child: Padding(
        padding: EdgeInsets.all(
          24,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dayNameString(),
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0),
              ),
              Text(
                dayNumberString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 32.0),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
                child: Text(
                  nextEventDay(),
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 13.0),
                ),
              ),
            ],
          ),
      ),
    ),);
  }

  /*
  Padding(
                padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
                child: Row(
                  children: [
                    Container(
                      width: 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          color: Colors.pinkAccent),
                      child: Text(' \n '),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                        child: Flexible( child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child:
                            Text(
                              nextEventTitle(),
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0),
                            ),),
                            Text(
                              nextEventTime(),
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13.0),
                            ),
                          ],
                        ),),

                    ),
                  ],
                ),
              ),
   */

  String dayNameString() {
    return 'THURSDAY';
  }

  String dayNumberString() {
    return '25';
  }

  String nextEventDay() {
    return 'TOMORROW';
  }

  String nextEventTitle() {
    return 'Publish new release sdfasd sd gfsd gsd gsd !';
  }

  String nextEventTime() {
    return '14:00 - 15:00';
  }
}
