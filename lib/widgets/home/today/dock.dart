import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpringBoardTodayWidget extends StatelessWidget {
  const SpringBoardTodayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(padding: EdgeInsets.only(top: 32.0), child:
      Container(
        color: Colors.grey.withOpacity(0.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Spacer()
          ],
        ),),
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
