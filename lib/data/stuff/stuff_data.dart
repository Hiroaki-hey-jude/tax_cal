import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'stuff_data.freezed.dart';
part 'stuff_data.g.dart';

@freezed
class StuffData with _$StuffData {
  const factory StuffData({
    required double stuffConsumptionTax,
    required double yen,
  }) = _StuffData;

  factory StuffData.fromJson(Map<String, dynamic> json) =>
      _$StuffDataFromJson(json);
}