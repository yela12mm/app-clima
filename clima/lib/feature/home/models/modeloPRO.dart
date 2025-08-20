import 'package:equatable/equatable.dart';

class Temperatura extends Equatable {
  final String? date;
  final double? maxtempC;
  final double? mintempC;

  const Temperatura({
    required this.date,
    required this.maxtempC,
    required this.mintempC,
   
  });

  @override
  List<Object?> get props => [date, maxtempC, mintempC];

  factory Temperatura.fromJson(Map<String, dynamic> json) {
    return Temperatura(
      date: json['date'] as String?,
      maxtempC: (json['day']?['maxtemp_c'] as num?)?.toDouble(),
      mintempC: (json['day']?['mintemp_c'] as num?)?.toDouble(),
      
    );
  }
}