import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SpringBoardStatusBarWidget extends StatefulWidget {
  @override
  _SpringBoardStatusBarWidgetState createState() =>
      _SpringBoardStatusBarWidgetState();
}

class _SpringBoardStatusBarWidgetState
    extends State<SpringBoardStatusBarWidget> {
  var timestamp = new DateTime.now();
  var timer;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => updateClock());
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6),
      height: 32.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.0,
            ),
            child: Text(
              formatTimeStamp(this.timestamp),
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
            child: Icon(
              CupertinoIcons.bluetooth,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
            child: Icon(
              CupertinoIcons.wifi,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              CupertinoIcons.battery_charging,
              color: Colors.white,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }

  String formatTimeStamp(DateTime timestamp) {
    String formattedDate = DateFormat('kk:mm').format(timestamp).toLowerCase();
    return formattedDate;
  }

  updateClock() {
    setState(() {
      this.timestamp = DateTime.now();
    });
  }
}
