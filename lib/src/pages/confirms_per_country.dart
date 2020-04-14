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
        return ListTileTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          style: ListTileStyle.list,
          dense: false,
          iconColor: Theme.of(context).primaryColor,
          child: ListTile(
            title: Text(country.country),
            subtitle: Text('Casos confirmados: ${country.newConfirmed}'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Informacion adicional'),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Pais: ${country.country}'),
                      Text('Casos nuevos confirmados: ${country.newConfirmed}'),
                      Text(
                          'Total casos confirmados: ${country.totalConfirmed}'),
                      Text('Nuevas muertes: ${country.newDeaths}'),
                      Text('Total muertes: ${country.totalDeaths}'),
                      Text('Numero casos recuperados: ${country.newRecovered}'),
                      Text('Total recuperados: ${country.totalRecovered}'),
                      Text(
                        'Ultima actualizacion: ${country.date.year}/${country.date.month}/${country.date.day} ${country.date.hour}:00',
                      ),
                    ],
                  ), //TODO: dialog info
                  elevation: 2,
                  scrollable: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('Salir'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
