// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeerData _$BeerDataFromJson(Map<String, dynamic> json) {
  return _BeerData.fromJson(json);
}

/// @nodoc
class _$BeerDataTearOff {
  const _$BeerDataTearOff();

  _BeerData call({required double beerTax, required double ml}) {
    return _BeerData(
      beerTax: beerTax,
      ml: ml,
    );
  }

  BeerData fromJson(Map<String, Object?> json) {
    return BeerData.fromJson(json);
  }
}

/// @nodoc
const $BeerData = _$BeerDataTearOff();

/// @nodoc
mixin _$BeerData {
  double get beerTax => throw _privateConstructorUsedError;
  double get ml => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerDataCopyWith<BeerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerDataCopyWith<$Res> {
  factory $BeerDataCopyWith(BeerData value, $Res Function(BeerData) then) =
      _$BeerDataCopyWithImpl<$Res>;
  $Res call({double beerTax, double ml});
}

/// @nodoc
class _$BeerDataCopyWithImpl<$Res> implements $BeerDataCopyWith<$Res> {
  _$BeerDataCopyWithImpl(this._value, this._then);

  final BeerData _value;
  // ignore: unused_field
  final $Res Function(BeerData) _then;

  @override
  $Res call({
    Object? beerTax = freezed,
    Object? ml = freezed,
  }) {
    return _then(_value.copyWith(
      beerTax: beerTax == freezed
          ? _value.beerTax
          : beerTax // ignore: cast_nullable_to_non_nullable
              as double,
      ml: ml == freezed
          ? _value.ml
          : ml // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$BeerDataCopyWith<$Res> implements $BeerDataCopyWith<$Res> {
  factory _$BeerDataCopyWith(_BeerData value, $Res Function(_BeerData) then) =
      __$BeerDataCopyWithImpl<$Res>;
  @override
  $Res call({double beerTax, double ml});
}

/// @nodoc
class __$BeerDataCopyWithImpl<$Res> extends _$BeerDataCopyWithImpl<$Res>
    implements _$BeerDataCopyWith<$Res> {
  __$BeerDataCopyWithImpl(_BeerData _value, $Res Function(_BeerData) _then)
      : super(_value, (v) => _then(v as _BeerData));

  @override
  _BeerData get _value => super._value as _BeerData;

  @override
  $Res call({
    Object? beerTax = freezed,
    Object? ml = freezed,
  }) {
    return _then(_BeerData(
      beerTax: beerTax == freezed
          ? _value.beerTax
          : beerTax // ignore: cast_nullable_to_non_nullable
              as double,
      ml: ml == freezed
          ? _value.ml
          : ml // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeerData with DiagnosticableTreeMixin implements _BeerData {
  const _$_BeerData({required this.beerTax, required this.ml});

  factory _$_BeerData.fromJson(Map<String, dynamic> json) =>
      _$$_BeerDataFromJson(json);

  @override
  final double beerTax;
  @override
  final double ml;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeerData(beerTax: $beerTax, ml: $ml)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeerData'))
      ..add(DiagnosticsProperty('beerTax', beerTax))
      ..add(DiagnosticsProperty('ml', ml));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeerData &&
            const DeepCollectionEquality().equals(other.beerTax, beerTax) &&
            const DeepCollectionEquality().equals(other.ml, ml));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(beerTax),
      const DeepCollectionEquality().hash(ml));

  @JsonKey(ignore: true)
  @override
  _$BeerDataCopyWith<_BeerData> get copyWith =>
      __$BeerDataCopyWithImpl<_BeerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeerDataToJson(this);
  }
}

abstract class _BeerData implements BeerData {
  const factory _BeerData({required double beerTax, required double ml}) =
      _$_BeerData;

  factory _BeerData.fromJson(Map<String, dynamic> json) = _$_BeerData.fromJson;

  @override
  double get beerTax;
  @override
  double get ml;
  @override
  @JsonKey(ignore: true)
  _$BeerDataCopyWith<_BeerData> get copyWith =>
      throw _privateConstructorUsedError;
}
