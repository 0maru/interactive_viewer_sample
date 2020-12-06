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
  _ViewerState call({bool canTransform, bool canScale}) {
    return _ViewerState(
      canTransform: canTransform,
      canScale: canScale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ViewerState = _$ViewerStateTearOff();

/// @nodoc
mixin _$ViewerState {
  bool get canTransform;
  bool get canScale;

  $ViewerStateCopyWith<ViewerState> get copyWith;
}

/// @nodoc
abstract class $ViewerStateCopyWith<$Res> {
  factory $ViewerStateCopyWith(
          ViewerState value, $Res Function(ViewerState) then) =
      _$ViewerStateCopyWithImpl<$Res>;
  $Res call({bool canTransform, bool canScale});
}

/// @nodoc
class _$ViewerStateCopyWithImpl<$Res> implements $ViewerStateCopyWith<$Res> {
  _$ViewerStateCopyWithImpl(this._value, this._then);

  final ViewerState _value;
  // ignore: unused_field
  final $Res Function(ViewerState) _then;

  @override
  $Res call({
    Object canTransform = freezed,
    Object canScale = freezed,
  }) {
    return _then(_value.copyWith(
      canTransform:
          canTransform == freezed ? _value.canTransform : canTransform as bool,
      canScale: canScale == freezed ? _value.canScale : canScale as bool,
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
  $Res call({bool canTransform, bool canScale});
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
    Object canTransform = freezed,
    Object canScale = freezed,
  }) {
    return _then(_ViewerState(
      canTransform:
          canTransform == freezed ? _value.canTransform : canTransform as bool,
      canScale: canScale == freezed ? _value.canScale : canScale as bool,
    ));
  }
}

/// @nodoc
class _$_ViewerState implements _ViewerState {
  const _$_ViewerState({this.canTransform, this.canScale});

  @override
  final bool canTransform;
  @override
  final bool canScale;

  @override
  String toString() {
    return 'ViewerState(canTransform: $canTransform, canScale: $canScale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerState &&
            (identical(other.canTransform, canTransform) ||
                const DeepCollectionEquality()
                    .equals(other.canTransform, canTransform)) &&
            (identical(other.canScale, canScale) ||
                const DeepCollectionEquality()
                    .equals(other.canScale, canScale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canTransform) ^
      const DeepCollectionEquality().hash(canScale);

  @override
  _$ViewerStateCopyWith<_ViewerState> get copyWith =>
      __$ViewerStateCopyWithImpl<_ViewerState>(this, _$identity);
}

abstract class _ViewerState implements ViewerState {
  const factory _ViewerState({bool canTransform, bool canScale}) =
      _$_ViewerState;

  @override
  bool get canTransform;
  @override
  bool get canScale;
  @override
  _$ViewerStateCopyWith<_ViewerState> get copyWith;
}
