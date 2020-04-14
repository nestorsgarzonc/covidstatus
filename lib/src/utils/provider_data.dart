import 'package:covidtracker_flutter/src/models/model_countries.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CovidData extends ChangeNotifier {
  final List<Country> countriesStatus = [];
  num newConfirmed;
  num totalConfirmed;
  num newDeaths;
  num totalDeaths;
  num newRecovered;
  num totalRecovered;

  CovidData() {
    this.getCovidData();
  }

  getCovidData() async {
    final String url = 'https://api.covid19api.com/summary';
    final resp = await http.get(url);
    final covidResponse = welcomeFromJson(resp.body);
    this.countriesStatus.addAll(covidResponse.countries);
    this.newConfirmed = covidResponse.global.newConfirmed;
    this.totalConfirmed = covidResponse.global.totalConfirmed;
    this.newDeaths = covidResponse.global.newDeaths;
    this.totalDeaths = covidResponse.global.totalDeaths;
    this.newRecovered = covidResponse.global.newRecovered;
    this.totalRecovered = covidResponse.global.totalRecovered;
    notifyListeners();
  }

}
