import 'package:covidtracker_flutter/src/pages/home_page.dart';
import 'package:covidtracker_flutter/src/utils/provider_data.dart';
import 'package:flutter/material.dart';
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
        routes: {
          HomePage.route: (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}
