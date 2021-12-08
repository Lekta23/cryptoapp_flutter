// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) => CurrencyData(
      json['price_change_pct'] as String?,
      json['oneDay'] as String?,
      json['oneMonth'] as String?,
      json['oneYear'] as String?,
    );

Map<String, dynamic> _$CurrencyDataToJson(CurrencyData instance) =>
    <String, dynamic>{
      'price_change_pct': instance.price_change_pct,
      'oneDay': instance.oneDay,
      'oneMonth': instance.oneMonth,
      'oneYear': instance.oneYear,
    };
