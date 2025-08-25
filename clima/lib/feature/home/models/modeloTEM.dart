import 'package:equatable/equatable.dart';

class Temperatura extends Equatable {
  final String? name;
  final String? region;
  final double? tempc;

  const Temperatura({
    this.name,
    this.region,
    this.tempc,
  });

  @override
  List<Object?> get props => [name, region, tempc];

  factory Temperatura.fromJson(Map<String, dynamic> json) {
    return Temperatura(
      name: json['location']?['name'] as String?,
      region: json['location']?['region'] as String?,
      tempc: (json['current']?['temp_c'] as num?)?.toDouble(),
    );
  }
}
