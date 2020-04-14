import 'package:covidtracker_flutter/src/pages/home_page.dart';
import 'package:covidtracker_flutter/src/utils/provider_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CovidData(),
        )
      ],
      child: MaterialApp(
        title: 'Covid19 tracker',
        initialRoute: HomePage.route,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff096B72),
          textTheme: GoogleFonts.notoSansTextTheme(),
          appBarTheme: AppBarTheme(
            color: Color(0xff096B72),
            elevation: 5,
          ),
          tabBarTheme: TabBarTheme(
            labelColor: Color(0xffFFEAEE),
            indicator: UnderlineTabIndicator(),
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ),
        routes: {
          HomePage.route: (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}
