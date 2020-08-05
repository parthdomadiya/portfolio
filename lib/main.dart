import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constance/themes.dart';
import 'package:portfolio/modules/home.dart';
import 'constance/constance.dart' as constance;


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(MyApp()));

}

class MyApp extends StatefulWidget {
  static setCustomeTheme(BuildContext context, int index) {
    final _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setCustomeTheme(index);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setCustomeTheme(int index) {
    if (index == 6) {
      setState(() {
        AppTheme.isLightTheme = true;
      });
    } else if (index == 7) {
      setState(() {
        AppTheme.isLightTheme = false;
      });
    } else {
      setState(() {
        constance.colorsIndex = index;

        constance.secondaryColorString = constance.primaryColorString;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          AppTheme.isLightTheme ? Brightness.dark : Brightness.light,
      statusBarBrightness:
          AppTheme.isLightTheme ? Brightness.light : Brightness.dark,
      systemNavigationBarColor:
          AppTheme.isLightTheme ? Colors.white : Colors.black,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness:
          AppTheme.isLightTheme ? Brightness.dark : Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      routes: routes,
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.Home: (BuildContext context) => HomeScreen(),
  };
}

class Routes {
  static const String Home = "/";
}
