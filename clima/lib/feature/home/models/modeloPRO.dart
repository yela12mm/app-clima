import 'package:equatable/equatable.dart';

class Pronostico extends Equatable {
  final String? date;
  final double? maxtempC;
  final double? mintempC;
  final String? conditionText;
  final String? conditionIcon;

  const Pronostico({
    required this.date,
    required this.maxtempC,
    required this.mintempC,
    required this.conditionText,
    required this.conditionIcon,
  });

  @override
  List<Object?> get props => [
    date,
    maxtempC,
    mintempC,
    conditionText,
    conditionIcon,
  ];

  factory Pronostico.fromJson(Map<String, dynamic> json) {
    return Pronostico(
      date: json['date'] as String?,
      maxtempC: (json['day']?['maxtemp_c'] as num?)?.toDouble(),
      mintempC: (json['day']?['mintemp_c'] as num?)?.toDouble(),
      conditionText: json['day']?['condition']?['text'] as String?,
      conditionIcon: json['day']?['condition']?['icon'] as String?,
    );
  }
}
