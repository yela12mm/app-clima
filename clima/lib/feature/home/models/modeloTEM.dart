import 'package:equatable/equatable.dart';

class Temperatura extends Equatable {
  final String? name;
  final String? region;
  final double? tempC;

  const Temperatura({
    required this.name,
    required this.region,
    required this.tempC,
   
  });

  @override
  List<Object?> get props => [name, region, tempC];

  factory Temperatura.fromJson(Map<String, dynamic> json) {
    return Temperatura(
      name: json['name'] as String?,
      region: json['location']?['region'] as String?,
      tempC: (json['current']?['temp_c'] as num?)?.toDouble(),
      
    );
  }
}