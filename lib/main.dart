import 'package:demo/Pages/login_page.dart';
import 'package:demo/utils/routes.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/cart_page.dart';
import 'Pages/country_code.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(demo());
}

// ignore: camel_case_types
class demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.countryCode,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.countryCode: (context) => MyHomePage(),
        // MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
