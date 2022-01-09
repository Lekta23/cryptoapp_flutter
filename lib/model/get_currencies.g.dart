// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_currencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCurrencies _$GetCurrenciesFromJson(Map<String, dynamic> json) =>
    GetCurrencies(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCurrenciesToJson(GetCurrencies instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
