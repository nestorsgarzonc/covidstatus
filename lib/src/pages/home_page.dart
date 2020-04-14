import 'package:covidtracker_flutter/src/pages/global_statistics.dart';
import 'package:flutter/material.dart';
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
                icon: Icon(Icons.location_on),
                text: 'Casos por pais',
              ),
              Tab(
                icon: Icon(Icons.supervised_user_circle),
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
