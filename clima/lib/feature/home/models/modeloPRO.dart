import 'package:equatable/equatable.dart';

class Pronostico extends Equatable {
  final String? date;
  final double? maxtempC;
  final double? mintempC;

  const Pronostico({
    required this.date,
    required this.maxtempC,
    required this.mintempC,
   
  });

  @override
  List<Object?> get props => [date, maxtempC, mintempC];

  factory Pronostico.fromJson(Map<String, dynamic> json) {
    return Pronostico(
      date: json['date'] as String?,
      maxtempC: (json['day']?['maxtemp_c'] as num?)?.toDouble(),
      mintempC: (json['day']?['mintemp_c'] as num?)?.toDouble(),
      
    );
  }
}