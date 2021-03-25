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
        primarySwatch: Colors.pink,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: Routes.initialScreen(),
      routes: Routes.routes()
    );
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