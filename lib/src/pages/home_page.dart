import 'package:covidtracker_flutter/src/pages/global_statistics.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'confirms_per_country.dart';

class HomePage extends StatelessWidget {
  static String route = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('COVID-19 TRACKER', style: TextStyle(letterSpacing: 2)),
          bottom: TabBar(
            tabs: <Widget>[
              buildTab(FontAwesomeIcons.solidMap, 'Casos por pais'),
              buildTab(FontAwesomeIcons.globeAmericas, 'Global'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ConfirmsPerCountry(),
            StatisticsCountry(),
          ],
        ),
      ),
    );
  }

  Tab buildTab(IconData icon, String text) {
    return Tab(
      icon: FaIcon(icon),
      text: text,
    );
  }
}
