import 'package:eaceto_rpi_springboard/colours/cupertino_colors.dart';
import 'package:eaceto_rpi_springboard/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SpringBoardApp());
}

class SpringBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RPiSpringBoard',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: CupertinoColours.black,
          accentColor: CupertinoColours.blackAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: CupertinoColours.textTheme,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: CupertinoColours.black,
          accentColor: CupertinoColours.blackAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: CupertinoColours.textTheme,
        ),
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        themeMode: ThemeMode.light,
        initialRoute: Routes.initialScreen(),
        routes: Routes.routes());
  }
}

/*
class SBHomePage extends StatefulWidget {
  SBHomePage({Key? key}) : super(key: key);

  @override
  _SBHomePageState createState() => _SBHomePageState();
}

class _SBHomePageState extends State<SBHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
*/
