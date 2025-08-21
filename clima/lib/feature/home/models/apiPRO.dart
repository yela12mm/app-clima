import 'dart:convert';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:http/http.dart' as http;

Future<List<Pronostico>> fetchForecast() async {
  final url = Uri.parse(
    "https://api.weatherapi.com/v1/forecast.json?key=d85b5704568744c3be7172811251808&q=Barranquilla&days=7",
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    final List forecast = data["forecast"]["forecastday"];
    return forecast.map((day) => Pronostico.fromJson(day)).toList();
  } else {
    throw Exception("Error: ${response.statusCode}");
  }
}
