
import 'package:eaceto_rpi_springboard/colours/ubuntu_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpringBoardStatusBarWidget extends StatelessWidget {
  const SpringBoardStatusBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UbuntuColours.darkAubergine.withOpacity(0.8),
      height: 32.0,
      width: MediaQuery.of(context).size.width,
        child: Spacer()
    );
  }
}