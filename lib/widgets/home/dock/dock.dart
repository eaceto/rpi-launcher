
import 'package:eaceto_rpi_springboard/colours/ubuntu_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpringBoardDockWidget extends StatelessWidget {
  const SpringBoardDockWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UbuntuColours.darkAubergine.withOpacity(0.8),
      height: MediaQuery.of(context).size.height,
      width: 64.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildIcons(
                () => {

            },
            Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
          buildIcons(
                () => {

            },
            Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
          buildIcons(
                () => {

            },
            Icon(
              Icons.camera,
              color: Colors.white,
            ),
          ),
          buildIcons(
                () => {

            },
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          Spacer(),
          buildIcons(() => {},
            Icon(
              Icons.apps,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildIcons(Function fn, Icon xicon) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
    child:
    IconButton(icon: xicon,
      iconSize: 40.0,
      onPressed: () => {

      },
    ),
  );
}