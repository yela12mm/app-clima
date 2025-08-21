import 'package:equatable/equatable.dart';

class Pronostico extends Equatable {
  final String? name;
  final String? region;
  final double? tempc;

  const Pronostico({
    required this.name,
    required this.region,
    required this.tempC,
  });

  @override
  List<Object?> get props => [name, region, tempC];

  factory Pronostico.fromJson(Map<String, dynamic> json) {
    return Pronostico(
      name: json['name'] as String?,
      region: json['location']?['region'] as String?,
      tempC: (json['current']?['temp_c'] as num?)?.toDouble(),
    );
  }
}
