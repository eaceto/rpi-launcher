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
    return Container(
      color: Colors.black.withOpacity(1.0),
      height: SpringBoardTodayWidget.singleWidgetWidth,
      width: SpringBoardTodayWidget.singleWidgetWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('THURSDAY', style: TextStyle(color: Colors.red),),
          Spacer(),
        ],
      ),
    );
  }
}
