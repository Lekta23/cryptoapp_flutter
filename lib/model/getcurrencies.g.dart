// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcurrencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCurrencies _$GetCurrenciesFromJson(Map<String, dynamic> json) =>
    GetCurrencies(
      json['id'] as String,
      json['name'] as String,
      json['logo_url'] as String?,
      json['price'] as String,
      json['rank'] as String?,
      json['1d'] == null
          ? null
          : CurrencyData.fromJson(json['1d'] as Map<String, dynamic>),
      json['30d'] == null
          ? null
          : CurrencyData.fromJson(json['30d'] as Map<String, dynamic>),
      json['365d'] == null
          ? null
          : CurrencyData.fromJson(json['365d'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetCurrenciesToJson(GetCurrencies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logo_url,
      'price': instance.price,
      'rank': instance.rank,
      '1d': instance.oneDay,
      '30d': instance.oneMonth,
      '365d': instance.oneYear,
    };
