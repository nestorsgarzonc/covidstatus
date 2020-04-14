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
          title: Text('Covid19-tracker'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: FaIcon(FontAwesomeIcons.solidMap),
                text: 'Casos por pais',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.globeAmericas),
                text: 'Global',
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            //TODO: sort by number of confirmated cases
            ConfirmsPerCountry(),
            StatisticsCountry(),
          ],
        ),
      ),
    );
  }
}
