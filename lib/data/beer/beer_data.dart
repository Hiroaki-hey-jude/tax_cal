import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'beer_data.freezed.dart';
part 'beer_data.g.dart';

@freezed
class BeerData with _$BeerData {
  const factory BeerData({
    required double beerTax,
    required double ml,
  }) = _BeerData;

  factory BeerData.fromJson(Map<String, dynamic> json) =>
      _$BeerDataFromJson(json);
}