import 'package:eaceto_rpi_springboard/widgets/home/today/clock/today_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpringBoardTodayWidget extends StatelessWidget {
  const SpringBoardTodayWidget({
    Key? key,
  }) : super(key: key);

  static const statusBarHeight = 32.0;
  static const singleWidgetWidth = 192.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: statusBarHeight),
      child: Container(
        height: MediaQuery.of(context).size.height - statusBarHeight,
        width: MediaQuery.of(context).size.width,
        child: 
        Padding(padding: EdgeInsets.all(32.0), child: Column(
          children: [
            Row(children: [
              SpringBoardTodayClockWidget(),
              Spacer(),
              SpringBoardTodayClockWidget(),
            ],),

            Spacer(),
          ],
        ),
        ),
      ),
    );
  }
}

Widget buildIcons(Function fn, Icon xicon) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
    child: IconButton(
      icon: xicon,
      iconSize: 40.0,
      onPressed: () => {},
    ),
  );
}
