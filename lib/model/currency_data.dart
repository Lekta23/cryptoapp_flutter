
import 'package:json_annotation/json_annotation.dart';

part 'currency_data.g.dart';

@JsonSerializable()
class CurrencyData {
  final String? price_change_pct;

  CurrencyData(this.price_change_pct);

  factory CurrencyData.fromJson(Map<String, dynamic> json) => _$CurrencyDataFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDataToJson(this);
}