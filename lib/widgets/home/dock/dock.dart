import 'package:flutter/material.dart';

class SpringBoardDockWidget extends StatefulWidget {
  @override
  _SpringBoardDockWidgetState createState() => _SpringBoardDockWidgetState();
}

class _SpringBoardDockWidgetState extends State<SpringBoardDockWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: ConstrainedBox(
        constraints: new BoxConstraints(
          minHeight: 86.0,
          maxHeight: 86.0,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              backgroundBlendMode: BlendMode.hardLight,
              color: Colors.grey),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Spacer(),


                DockAppIconWidget(
                    icon: Icon(Icons.call_sharp),
                    onPressed: () => {

                    }
                ),

                Spacer(),


                DockAppIconWidget(
                    icon: Icon(Icons.messenger_outline_rounded),
                    onPressed: () => {

                    }
                ),

                Spacer(),

                DockAppIconWidget(
                    icon: Icon(Icons.folder_open_rounded),
                    onPressed: () => {

                    }
                ),

                Spacer(),

                DockAppIconWidget(
                    icon: Icon(Icons.settings),
                    onPressed: () => {

                    }
                ),

                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DockAppIconWidget extends StatelessWidget {

  DockAppIconWidget({
    Key? key,
    required this.icon,
    required this.onPressed
  }) : super(key: key);

  final Icon icon;
  final Map Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: new BoxConstraints(
        minHeight: 60.0,
        maxHeight: 60.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            backgroundBlendMode: BlendMode.color,
            color: Colors.black),
        child: Container(
          child: IconButton(
              iconSize: 44.0,
              icon: this.icon,
              onPressed: this.onPressed),
        ),
      ),
    );
  }
}
