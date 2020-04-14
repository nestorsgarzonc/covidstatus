import 'package:covidtracker_flutter/src/utils/provider_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatisticsCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CovidData>(context);
    return ListTileTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      style: ListTileStyle.list,
      dense: false,
      iconColor: Theme.of(context).primaryColor,
      child: ListView(
        children: <Widget>[
          ListTile(
              title: Text('Nuevos casos confirmados ${data.newConfirmed}')),
          ListTile(
              title: Text('Total casos confirmados ${data.totalConfirmed}')),
          ListTile(title: Text('Nuevas casos muertes ${data.newDeaths}')),
          ListTile(title: Text('Total de muertes ${data.totalDeaths}')),
          ListTile(
              title: Text('Nuevos casos recuperados ${data.newRecovered}')),
          ListTile(
              title: Text('Total casos recuperados ${data.totalRecovered}')),
        ],
      ),
    );
  }
}
