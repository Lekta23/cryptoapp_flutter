import 'package:json_annotation/json_annotation.dart';
import 'package:notreprojet/model/currency.dart';

part 'get_currencies.g.dart';

@JsonSerializable()
class GetCurrencies {
  final List<Currency>? data;

  GetCurrencies(this.data);

  factory GetCurrencies.fromJson(Map<String, dynamic> json) =>
      _$GetCurrenciesFromJson(json);

  Map<String, dynamic> toJson() => _$GetCurrenciesToJson(this);
}
