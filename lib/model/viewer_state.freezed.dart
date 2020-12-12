// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ViewerStateTearOff {
  const _$ViewerStateTearOff();

// ignore: unused_element
  _ViewerState call(
      {bool transformEnable,
      bool scaleEnable,
      bool isScale,
      bool isInteractionStart,
      bool isInteractionEnd}) {
    return _ViewerState(
      transformEnable: transformEnable,
      scaleEnable: scaleEnable,
      isScale: isScale,
      isInteractionStart: isInteractionStart,
      isInteractionEnd: isInteractionEnd,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ViewerState = _$ViewerStateTearOff();

/// @nodoc
mixin _$ViewerState {
  bool get transformEnable;
  bool get scaleEnable;
  bool get isScale;
  bool get isInteractionStart;
  bool get isInteractionEnd;

  $ViewerStateCopyWith<ViewerState> get copyWith;
}

/// @nodoc
abstract class $ViewerStateCopyWith<$Res> {
  factory $ViewerStateCopyWith(
          ViewerState value, $Res Function(ViewerState) then) =
      _$ViewerStateCopyWithImpl<$Res>;
  $Res call(
      {bool transformEnable,
      bool scaleEnable,
      bool isScale,
      bool isInteractionStart,
      bool isInteractionEnd});
}

/// @nodoc
class _$ViewerStateCopyWithImpl<$Res> implements $ViewerStateCopyWith<$Res> {
  _$ViewerStateCopyWithImpl(this._value, this._then);

  final ViewerState _value;
  // ignore: unused_field
  final $Res Function(ViewerState) _then;

  @override
  $Res call({
    Object transformEnable = freezed,
    Object scaleEnable = freezed,
    Object isScale = freezed,
    Object isInteractionStart = freezed,
    Object isInteractionEnd = freezed,
  }) {
    return _then(_value.copyWith(
      transformEnable: transformEnable == freezed
          ? _value.transformEnable
          : transformEnable as bool,
      scaleEnable:
          scaleEnable == freezed ? _value.scaleEnable : scaleEnable as bool,
      isScale: isScale == freezed ? _value.isScale : isScale as bool,
      isInteractionStart: isInteractionStart == freezed
          ? _value.isInteractionStart
          : isInteractionStart as bool,
      isInteractionEnd: isInteractionEnd == freezed
          ? _value.isInteractionEnd
          : isInteractionEnd as bool,
    ));
  }
}

/// @nodoc
abstract class _$ViewerStateCopyWith<$Res>
    implements $ViewerStateCopyWith<$Res> {
  factory _$ViewerStateCopyWith(
          _ViewerState value, $Res Function(_ViewerState) then) =
      __$ViewerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool transformEnable,
      bool scaleEnable,
      bool isScale,
      bool isInteractionStart,
      bool isInteractionEnd});
}

/// @nodoc
class __$ViewerStateCopyWithImpl<$Res> extends _$ViewerStateCopyWithImpl<$Res>
    implements _$ViewerStateCopyWith<$Res> {
  __$ViewerStateCopyWithImpl(
      _ViewerState _value, $Res Function(_ViewerState) _then)
      : super(_value, (v) => _then(v as _ViewerState));

  @override
  _ViewerState get _value => super._value as _ViewerState;

  @override
  $Res call({
    Object transformEnable = freezed,
    Object scaleEnable = freezed,
    Object isScale = freezed,
    Object isInteractionStart = freezed,
    Object isInteractionEnd = freezed,
  }) {
    return _then(_ViewerState(
      transformEnable: transformEnable == freezed
          ? _value.transformEnable
          : transformEnable as bool,
      scaleEnable:
          scaleEnable == freezed ? _value.scaleEnable : scaleEnable as bool,
      isScale: isScale == freezed ? _value.isScale : isScale as bool,
      isInteractionStart: isInteractionStart == freezed
          ? _value.isInteractionStart
          : isInteractionStart as bool,
      isInteractionEnd: isInteractionEnd == freezed
          ? _value.isInteractionEnd
          : isInteractionEnd as bool,
    ));
  }
}

/// @nodoc
class _$_ViewerState implements _ViewerState {
  const _$_ViewerState(
      {this.transformEnable,
      this.scaleEnable,
      this.isScale,
      this.isInteractionStart,
      this.isInteractionEnd});

  @override
  final bool transformEnable;
  @override
  final bool scaleEnable;
  @override
  final bool isScale;
  @override
  final bool isInteractionStart;
  @override
  final bool isInteractionEnd;

  @override
  String toString() {
    return 'ViewerState(transformEnable: $transformEnable, scaleEnable: $scaleEnable, isScale: $isScale, isInteractionStart: $isInteractionStart, isInteractionEnd: $isInteractionEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerState &&
            (identical(other.transformEnable, transformEnable) ||
                const DeepCollectionEquality()
                    .equals(other.transformEnable, transformEnable)) &&
            (identical(other.scaleEnable, scaleEnable) ||
                const DeepCollectionEquality()
                    .equals(other.scaleEnable, scaleEnable)) &&
            (identical(other.isScale, isScale) ||
                const DeepCollectionEquality()
                    .equals(other.isScale, isScale)) &&
            (identical(other.isInteractionStart, isInteractionStart) ||
                const DeepCollectionEquality()
                    .equals(other.isInteractionStart, isInteractionStart)) &&
            (identical(other.isInteractionEnd, isInteractionEnd) ||
                const DeepCollectionEquality()
                    .equals(other.isInteractionEnd, isInteractionEnd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transformEnable) ^
      const DeepCollectionEquality().hash(scaleEnable) ^
      const DeepCollectionEquality().hash(isScale) ^
      const DeepCollectionEquality().hash(isInteractionStart) ^
      const DeepCollectionEquality().hash(isInteractionEnd);

  @override
  _$ViewerStateCopyWith<_ViewerState> get copyWith =>
      __$ViewerStateCopyWithImpl<_ViewerState>(this, _$identity);
}

abstract class _ViewerState implements ViewerState {
  const factory _ViewerState(
      {bool transformEnable,
      bool scaleEnable,
      bool isScale,
      bool isInteractionStart,
      bool isInteractionEnd}) = _$_ViewerState;

  @override
  bool get transformEnable;
  @override
  bool get scaleEnable;
  @override
  bool get isScale;
  @override
  bool get isInteractionStart;
  @override
  bool get isInteractionEnd;
  @override
  _$ViewerStateCopyWith<_ViewerState> get copyWith;
}
