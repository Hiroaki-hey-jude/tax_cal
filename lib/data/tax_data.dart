import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tax_data.freezed.dart';
part 'tax_data.g.dart';

@freezed
class TaxData with _$TaxData {
  const factory TaxData({
    required double consumptionTax,
    required double tabacoSpecialTax,
    required double stateTabacoTax,
    required double countryTabacoTax,
  }) = _TaxData;

  factory TaxData.fromJson(Map<String, dynamic> json) =>
      _$TaxDataFromJson(json);
}