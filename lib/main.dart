import 'package:flutter/material.dart';
import 'package:neryza_unit2/router/app_routes.dart';
import 'package:neryza_unit2/screens/alert_screen.dart';
import 'package:neryza_unit2/screens/animation_screen.dart';
import 'package:neryza_unit2/screens/home_screen.dart';
import 'package:neryza_unit2/screens/listview_screen.dart';
import 'package:neryza_unit2/screens/listview_screen_2.dart';
import 'package:neryza_unit2/screens/card_screen.dart';
import 'package:neryza_unit2/themes/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // static const Color primary = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppThemes.purpleLightTheme
        // home: ListView2Screen()
        );
  }
}
