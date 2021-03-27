import 'package:eaceto_rpi_springboard/widgets/home/today/clock/today_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class SpringBoardTodayWidget extends StatelessWidget {
  const SpringBoardTodayWidget({
    Key? key,
  }) : super(key: key);

  static const statusBarHeight = 32.0;

  static const borderPadding = 48.0;
  static const interRowPadding = 32.0;
  static const singleWidgetWidth =
      (480.0 - 2 * borderPadding - interRowPadding) / 2.0;
  static const fullWidgetHeight = 480.0;

  static const cellRed = Color(0xffc73232);
  static const cellMustard = Color(0xffd7aa22);
  static const cellGrey = Color(0xffcfd4e0);
  static const cellBlue = Color(0xff1553be);
  static const background = Color(0xff242830);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: statusBarHeight),
      child: Container(
        height: MediaQuery.of(context).size.height - statusBarHeight,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(borderPadding, 0, borderPadding, 0),
          child: WaterfallFlow.builder(
            //cacheExtent: 0.0,
            //reverse: true,
            padding: const EdgeInsets.all(5.0),
            gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              collectGarbage: (List<int> garbages) {

              },
              viewportBuilder: (int firstIndex, int lastIndex) {

              },
            ),
            itemBuilder: (BuildContext c, int index) {
              if (index <= 1 || index >= 12) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 64,
                );
              }

              return Container(
                child: SpringBoardTodayClockWidget(),
              );
            },
            //itemCount: 19,
            itemCount:10 + 4,
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
