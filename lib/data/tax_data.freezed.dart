// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tax_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaxData _$TaxDataFromJson(Map<String, dynamic> json) {
  return _TaxData.fromJson(json);
}

/// @nodoc
class _$TaxDataTearOff {
  const _$TaxDataTearOff();

  _TaxData call(
      {required double consumptionTax,
      required double tabacoSpecialTax,
      required double stateTabacoTax,
      required double countryTabacoTax,
      required double allTabacoTax}) {
    return _TaxData(
      consumptionTax: consumptionTax,
      tabacoSpecialTax: tabacoSpecialTax,
      stateTabacoTax: stateTabacoTax,
      countryTabacoTax: countryTabacoTax,
      allTabacoTax: allTabacoTax,
    );
  }

  TaxData fromJson(Map<String, Object?> json) {
    return TaxData.fromJson(json);
  }
}

/// @nodoc
const $TaxData = _$TaxDataTearOff();

/// @nodoc
mixin _$TaxData {
  double get consumptionTax => throw _privateConstructorUsedError;
  double get tabacoSpecialTax => throw _privateConstructorUsedError;
  double get stateTabacoTax => throw _privateConstructorUsedError;
  double get countryTabacoTax => throw _privateConstructorUsedError;
  double get allTabacoTax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxDataCopyWith<TaxData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxDataCopyWith<$Res> {
  factory $TaxDataCopyWith(TaxData value, $Res Function(TaxData) then) =
      _$TaxDataCopyWithImpl<$Res>;
  $Res call(
      {double consumptionTax,
      double tabacoSpecialTax,
      double stateTabacoTax,
      double countryTabacoTax,
      double allTabacoTax});
}

/// @nodoc
class _$TaxDataCopyWithImpl<$Res> implements $TaxDataCopyWith<$Res> {
  _$TaxDataCopyWithImpl(this._value, this._then);

  final TaxData _value;
  // ignore: unused_field
  final $Res Function(TaxData) _then;

  @override
  $Res call({
    Object? consumptionTax = freezed,
    Object? tabacoSpecialTax = freezed,
    Object? stateTabacoTax = freezed,
    Object? countryTabacoTax = freezed,
    Object? allTabacoTax = freezed,
  }) {
    return _then(_value.copyWith(
      consumptionTax: consumptionTax == freezed
          ? _value.consumptionTax
          : consumptionTax // ignore: cast_nullable_to_non_nullable
              as double,
      tabacoSpecialTax: tabacoSpecialTax == freezed
          ? _value.tabacoSpecialTax
          : tabacoSpecialTax // ignore: cast_nullable_to_non_nullable
              as double,
      stateTabacoTax: stateTabacoTax == freezed
          ? _value.stateTabacoTax
          : stateTabacoTax // ignore: cast_nullable_to_non_nullable
              as double,
      countryTabacoTax: countryTabacoTax == freezed
          ? _value.countryTabacoTax
          : countryTabacoTax // ignore: cast_nullable_to_non_nullable
              as double,
      allTabacoTax: allTabacoTax == freezed
          ? _value.allTabacoTax
          : allTabacoTax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TaxDataCopyWith<$Res> implements $TaxDataCopyWith<$Res> {
  factory _$TaxDataCopyWith(_TaxData value, $Res Function(_TaxData) then) =
      __$TaxDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double consumptionTax,
      double tabacoSpecialTax,
      double stateTabacoTax,
      double countryTabacoTax,
      double allTabacoTax});
}

/// @nodoc
class __$TaxDataCopyWithImpl<$Res> extends _$TaxDataCopyWithImpl<$Res>
    implements _$TaxDataCopyWith<$Res> {
  __$TaxDataCopyWithImpl(_TaxData _value, $Res Function(_TaxData) _then)
      : super(_value, (v) => _then(v as _TaxData));

  @override
  _TaxData get _value => super._value as _TaxData;

  @override
  $Res call({
    Object? consumptionTax = freezed,
    Object? tabacoSpecialTax = freezed,
    Object? stateTabacoTax = freezed,
    Object? countryTabacoTax = freezed,
    Object? allTabacoTax = freezed,
  }) {
    return _then(_TaxData(
      consumptionTax: consumptionTax == freezed
          ? _value.consumptionTax
          : consumptionTax // ignore: cast_nullable_to_non_nullable
              as double,
      tabacoSpecialTax: tabacoSpecialTax == freezed
          ? _value.tabacoSpecialTax
          : tabacoSpecialTax // ignore: cast_nullable_to_non_nullable
              as double,
      stateTabacoTax: stateTabacoTax == freezed
          ? _value.stateTabacoTax
          : stateTabacoTax // ignore: cast_nullable_to_non_nullable
              as double,
      countryTabacoTax: countryTabacoTax == freezed
          ? _value.countryTabacoTax
          : countryTabacoTax // ignore: cast_nullable_to_non_nullable
              as double,
      allTabacoTax: allTabacoTax == freezed
          ? _value.allTabacoTax
          : allTabacoTax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxData with DiagnosticableTreeMixin implements _TaxData {
  const _$_TaxData(
      {required this.consumptionTax,
      required this.tabacoSpecialTax,
      required this.stateTabacoTax,
      required this.countryTabacoTax,
      required this.allTabacoTax});

  factory _$_TaxData.fromJson(Map<String, dynamic> json) =>
      _$$_TaxDataFromJson(json);

  @override
  final double consumptionTax;
  @override
  final double tabacoSpecialTax;
  @override
  final double stateTabacoTax;
  @override
  final double countryTabacoTax;
  @override
  final double allTabacoTax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaxData(consumptionTax: $consumptionTax, tabacoSpecialTax: $tabacoSpecialTax, stateTabacoTax: $stateTabacoTax, countryTabacoTax: $countryTabacoTax, allTabacoTax: $allTabacoTax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaxData'))
      ..add(DiagnosticsProperty('consumptionTax', consumptionTax))
      ..add(DiagnosticsProperty('tabacoSpecialTax', tabacoSpecialTax))
      ..add(DiagnosticsProperty('stateTabacoTax', stateTabacoTax))
      ..add(DiagnosticsProperty('countryTabacoTax', countryTabacoTax))
      ..add(DiagnosticsProperty('allTabacoTax', allTabacoTax));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaxData &&
            const DeepCollectionEquality()
                .equals(other.consumptionTax, consumptionTax) &&
            const DeepCollectionEquality()
                .equals(other.tabacoSpecialTax, tabacoSpecialTax) &&
            const DeepCollectionEquality()
                .equals(other.stateTabacoTax, stateTabacoTax) &&
            const DeepCollectionEquality()
                .equals(other.countryTabacoTax, countryTabacoTax) &&
            const DeepCollectionEquality()
                .equals(other.allTabacoTax, allTabacoTax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(consumptionTax),
      const DeepCollectionEquality().hash(tabacoSpecialTax),
      const DeepCollectionEquality().hash(stateTabacoTax),
      const DeepCollectionEquality().hash(countryTabacoTax),
      const DeepCollectionEquality().hash(allTabacoTax));

  @JsonKey(ignore: true)
  @override
  _$TaxDataCopyWith<_TaxData> get copyWith =>
      __$TaxDataCopyWithImpl<_TaxData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxDataToJson(this);
  }
}

abstract class _TaxData implements TaxData {
  const factory _TaxData(
      {required double consumptionTax,
      required double tabacoSpecialTax,
      required double stateTabacoTax,
      required double countryTabacoTax,
      required double allTabacoTax}) = _$_TaxData;

  factory _TaxData.fromJson(Map<String, dynamic> json) = _$_TaxData.fromJson;

  @override
  double get consumptionTax;
  @override
  double get tabacoSpecialTax;
  @override
  double get stateTabacoTax;
  @override
  double get countryTabacoTax;
  @override
  double get allTabacoTax;
  @override
  @JsonKey(ignore: true)
  _$TaxDataCopyWith<_TaxData> get copyWith =>
      throw _privateConstructorUsedError;
}
