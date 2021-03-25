import 'package:eaceto_rpi_springboard/widgets/home/status_bar/status_bar.dart';
import 'package:eaceto_rpi_springboard/widgets/home/today/dock.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const route = '/home';

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> apps = List.empty(growable: true);

  double sidebarOpacity = 1.0;

  void drawerApps() async {}

  void navigateScreen() async {
    setState(() {
      sidebarOpacity = 0.30;
    });

    //var app = await Navigator.of(context)
    //    .push(RouteAnimator.createRoute(apps, sortType));

    setState(() {
      //apps = app[0];
      //sortType = app[1];
      sidebarOpacity = 1;
    });
  }

  @override
  void initState() {
    //appInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        drawer: Opacity(
          opacity: sidebarOpacity,
          child: SafeArea(
            child: SpringBoardTodayWidget(),
          ),
        ),
        body: Container(
          key: scaffoldKey,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bigsur_default_wallpaper.png"),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SpringBoardStatusBarWidget(),
            ],
          ),
        ),
        drawerEnableOpenDragGesture: true,
      ),
    );
  }
}
