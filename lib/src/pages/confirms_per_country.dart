import 'package:covidtracker_flutter/src/utils/provider_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmsPerCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final resume = Provider.of<CovidData>(context).countriesStatus;
    return ListView.builder(
      itemCount: resume.length,
      itemBuilder: (BuildContext context, int index) {
        final country = resume[index];
        return ListTile(
          title: Text(country.country),
          subtitle: Text('Casos confirmados: ${country.newConfirmed}'),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}
