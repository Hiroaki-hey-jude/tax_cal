// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stuff_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StuffData _$StuffDataFromJson(Map<String, dynamic> json) {
  return _StuffData.fromJson(json);
}

/// @nodoc
class _$StuffDataTearOff {
  const _$StuffDataTearOff();

  _StuffData call({required double stuffConsumptionTax, required double yen}) {
    return _StuffData(
      stuffConsumptionTax: stuffConsumptionTax,
      yen: yen,
    );
  }

  StuffData fromJson(Map<String, Object?> json) {
    return StuffData.fromJson(json);
  }
}

/// @nodoc
const $StuffData = _$StuffDataTearOff();

/// @nodoc
mixin _$StuffData {
  double get stuffConsumptionTax => throw _privateConstructorUsedError;
  double get yen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StuffDataCopyWith<StuffData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffDataCopyWith<$Res> {
  factory $StuffDataCopyWith(StuffData value, $Res Function(StuffData) then) =
      _$StuffDataCopyWithImpl<$Res>;
  $Res call({double stuffConsumptionTax, double yen});
}

/// @nodoc
class _$StuffDataCopyWithImpl<$Res> implements $StuffDataCopyWith<$Res> {
  _$StuffDataCopyWithImpl(this._value, this._then);

  final StuffData _value;
  // ignore: unused_field
  final $Res Function(StuffData) _then;

  @override
  $Res call({
    Object? stuffConsumptionTax = freezed,
    Object? yen = freezed,
  }) {
    return _then(_value.copyWith(
      stuffConsumptionTax: stuffConsumptionTax == freezed
          ? _value.stuffConsumptionTax
          : stuffConsumptionTax // ignore: cast_nullable_to_non_nullable
              as double,
      yen: yen == freezed
          ? _value.yen
          : yen // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$StuffDataCopyWith<$Res> implements $StuffDataCopyWith<$Res> {
  factory _$StuffDataCopyWith(
          _StuffData value, $Res Function(_StuffData) then) =
      __$StuffDataCopyWithImpl<$Res>;
  @override
  $Res call({double stuffConsumptionTax, double yen});
}

/// @nodoc
class __$StuffDataCopyWithImpl<$Res> extends _$StuffDataCopyWithImpl<$Res>
    implements _$StuffDataCopyWith<$Res> {
  __$StuffDataCopyWithImpl(_StuffData _value, $Res Function(_StuffData) _then)
      : super(_value, (v) => _then(v as _StuffData));

  @override
  _StuffData get _value => super._value as _StuffData;

  @override
  $Res call({
    Object? stuffConsumptionTax = freezed,
    Object? yen = freezed,
  }) {
    return _then(_StuffData(
      stuffConsumptionTax: stuffConsumptionTax == freezed
          ? _value.stuffConsumptionTax
          : stuffConsumptionTax // ignore: cast_nullable_to_non_nullable
              as double,
      yen: yen == freezed
          ? _value.yen
          : yen // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StuffData with DiagnosticableTreeMixin implements _StuffData {
  const _$_StuffData({required this.stuffConsumptionTax, required this.yen});

  factory _$_StuffData.fromJson(Map<String, dynamic> json) =>
      _$$_StuffDataFromJson(json);

  @override
  final double stuffConsumptionTax;
  @override
  final double yen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StuffData(stuffConsumptionTax: $stuffConsumptionTax, yen: $yen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StuffData'))
      ..add(DiagnosticsProperty('stuffConsumptionTax', stuffConsumptionTax))
      ..add(DiagnosticsProperty('yen', yen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StuffData &&
            const DeepCollectionEquality()
                .equals(other.stuffConsumptionTax, stuffConsumptionTax) &&
            const DeepCollectionEquality().equals(other.yen, yen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stuffConsumptionTax),
      const DeepCollectionEquality().hash(yen));

  @JsonKey(ignore: true)
  @override
  _$StuffDataCopyWith<_StuffData> get copyWith =>
      __$StuffDataCopyWithImpl<_StuffData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StuffDataToJson(this);
  }
}

abstract class _StuffData implements StuffData {
  const factory _StuffData(
      {required double stuffConsumptionTax,
      required double yen}) = _$_StuffData;

  factory _StuffData.fromJson(Map<String, dynamic> json) =
      _$_StuffData.fromJson;

  @override
  double get stuffConsumptionTax;
  @override
  double get yen;
  @override
  @JsonKey(ignore: true)
  _$StuffDataCopyWith<_StuffData> get copyWith =>
      throw _privateConstructorUsedError;
}
