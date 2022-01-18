// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaxData _$$_TaxDataFromJson(Map<String, dynamic> json) => _$_TaxData(
      consumptionTax: (json['consumptionTax'] as num).toDouble(),
      tabacoSpecialTax: (json['tabacoSpecialTax'] as num).toDouble(),
      stateTabacoTax: (json['stateTabacoTax'] as num).toDouble(),
      countryTabacoTax: (json['countryTabacoTax'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TaxDataToJson(_$_TaxData instance) =>
    <String, dynamic>{
      'consumptionTax': instance.consumptionTax,
      'tabacoSpecialTax': instance.tabacoSpecialTax,
      'stateTabacoTax': instance.stateTabacoTax,
      'countryTabacoTax': instance.countryTabacoTax,
    };
