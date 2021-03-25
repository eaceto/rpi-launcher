import 'package:eaceto_rpi_springboard/widgets/home/today/today.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SpringBoardTodayCalendarWidget extends StatefulWidget {
  @override
  _SpringBoardTodayCalendarWidgetState createState() =>
      _SpringBoardTodayCalendarWidgetState();
}

class _SpringBoardTodayCalendarWidgetState
    extends State<SpringBoardTodayCalendarWidget> {
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
            color: Colors.black),
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
                      fontSize: 15.0),
                ),
              ),
              Text(
                "No more events today",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0),
              )
            ],
          ),
        ),
      ),
    );
  }

  String dayNameString() {
    return DateFormat('EEEE').format(DateTime.now()).toUpperCase();
  }

  String dayNumberString() {
    return DateFormat('dd').format(DateTime.now()).toUpperCase();
  }

  String nextEventDay() {
    return '';
  }
}
