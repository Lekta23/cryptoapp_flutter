
import 'package:json_annotation/json_annotation.dart';

part 'currency_data.g.dart';

@JsonSerializable()
class CurrencyData {
  final String? price_change_pct;
  final String? oneDay;
  final String? oneMonth;
  final String? oneYear;


  CurrencyData(this.price_change_pct, this.oneDay, this.oneMonth, this.oneYear);

  factory CurrencyData.fromJson(Map<String, dynamic> json) => _$CurrencyDataFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDataToJson(this);
}