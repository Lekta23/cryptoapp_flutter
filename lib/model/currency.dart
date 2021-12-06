import 'package:json_annotation/json_annotation.dart';

import 'currency_data.dart';

part 'currency.g.dart';

@JsonSerializable()
class Currency{
final String id;
final String name; 
final String? logo_url;
final String price;
final String? rank;


@JsonKey(name :'1d')
final CurrencyData? oneDay;
@JsonKey(name : '30d')
final CurrencyData? oneMonth;
@JsonKey(name : '365d')
final CurrencyData? oneYear;

  Currency(this.id, this.name, this.logo_url, this.price, this.rank, this.oneDay, this.oneMonth, this.oneYear);

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}



