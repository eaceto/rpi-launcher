import 'package:eaceto_rpi_springboard/screens/home/home.dart';

class Routes {
  static routes() {
    return {
      Home.route: (context) => Home(),
    };
  }

  static initialScreen() {
    return Home.route;
  }
}