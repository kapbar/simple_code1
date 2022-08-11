// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateBlocLocations {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationsInitial value) initial,
    required TResult Function(StateLocationsLoading value) loading,
    required TResult Function(StateLocationsData value) data,
    required TResult Function(StateLocationsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocLocationsCopyWith<$Res> {
  factory $StateBlocLocationsCopyWith(
          StateBlocLocations value, $Res Function(StateBlocLocations) then) =
      _$StateBlocLocationsCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateBlocLocationsCopyWithImpl<$Res>
    implements $StateBlocLocationsCopyWith<$Res> {
  _$StateBlocLocationsCopyWithImpl(this._value, this._then);

  final StateBlocLocations _value;
  // ignore: unused_field
  final $Res Function(StateBlocLocations) _then;
}

/// @nodoc
abstract class _$$StateLocationsInitialCopyWith<$Res> {
  factory _$$StateLocationsInitialCopyWith(_$StateLocationsInitial value,
          $Res Function(_$StateLocationsInitial) then) =
      __$$StateLocationsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateLocationsInitialCopyWithImpl<$Res>
    extends _$StateBlocLocationsCopyWithImpl<$Res>
    implements _$$StateLocationsInitialCopyWith<$Res> {
  __$$StateLocationsInitialCopyWithImpl(_$StateLocationsInitial _value,
      $Res Function(_$StateLocationsInitial) _then)
      : super(_value, (v) => _then(v as _$StateLocationsInitial));

  @override
  _$StateLocationsInitial get _value => super._value as _$StateLocationsInitial;
}

/// @nodoc

class _$StateLocationsInitial implements StateLocationsInitial {
  const _$StateLocationsInitial();

  @override
  String toString() {
    return 'StateBlocLocations.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateLocationsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationsInitial value) initial,
    required TResult Function(StateLocationsLoading value) loading,
    required TResult Function(StateLocationsData value) data,
    required TResult Function(StateLocationsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateLocationsInitial implements StateBlocLocations {
  const factory StateLocationsInitial() = _$StateLocationsInitial;
}

/// @nodoc
abstract class _$$StateLocationsLoadingCopyWith<$Res> {
  factory _$$StateLocationsLoadingCopyWith(_$StateLocationsLoading value,
          $Res Function(_$StateLocationsLoading) then) =
      __$$StateLocationsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateLocationsLoadingCopyWithImpl<$Res>
    extends _$StateBlocLocationsCopyWithImpl<$Res>
    implements _$$StateLocationsLoadingCopyWith<$Res> {
  __$$StateLocationsLoadingCopyWithImpl(_$StateLocationsLoading _value,
      $Res Function(_$StateLocationsLoading) _then)
      : super(_value, (v) => _then(v as _$StateLocationsLoading));

  @override
  _$StateLocationsLoading get _value => super._value as _$StateLocationsLoading;
}

/// @nodoc

class _$StateLocationsLoading implements StateLocationsLoading {
  const _$StateLocationsLoading();

  @override
  String toString() {
    return 'StateBlocLocations.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateLocationsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationsInitial value) initial,
    required TResult Function(StateLocationsLoading value) loading,
    required TResult Function(StateLocationsData value) data,
    required TResult Function(StateLocationsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateLocationsLoading implements StateBlocLocations {
  const factory StateLocationsLoading() = _$StateLocationsLoading;
}

/// @nodoc
abstract class _$$StateLocationsDataCopyWith<$Res> {
  factory _$$StateLocationsDataCopyWith(_$StateLocationsData value,
          $Res Function(_$StateLocationsData) then) =
      __$$StateLocationsDataCopyWithImpl<$Res>;
  $Res call({List<Location> data});
}

/// @nodoc
class __$$StateLocationsDataCopyWithImpl<$Res>
    extends _$StateBlocLocationsCopyWithImpl<$Res>
    implements _$$StateLocationsDataCopyWith<$Res> {
  __$$StateLocationsDataCopyWithImpl(
      _$StateLocationsData _value, $Res Function(_$StateLocationsData) _then)
      : super(_value, (v) => _then(v as _$StateLocationsData));

  @override
  _$StateLocationsData get _value => super._value as _$StateLocationsData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StateLocationsData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ));
  }
}

/// @nodoc

class _$StateLocationsData implements StateLocationsData {
  const _$StateLocationsData({required final List<Location> data})
      : _data = data;

  final List<Location> _data;
  @override
  List<Location> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'StateBlocLocations.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateLocationsData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$StateLocationsDataCopyWith<_$StateLocationsData> get copyWith =>
      __$$StateLocationsDataCopyWithImpl<_$StateLocationsData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationsInitial value) initial,
    required TResult Function(StateLocationsLoading value) loading,
    required TResult Function(StateLocationsData value) data,
    required TResult Function(StateLocationsError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StateLocationsData implements StateBlocLocations {
  const factory StateLocationsData({required final List<Location> data}) =
      _$StateLocationsData;

  List<Location> get data;
  @JsonKey(ignore: true)
  _$$StateLocationsDataCopyWith<_$StateLocationsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateLocationsErrorCopyWith<$Res> {
  factory _$$StateLocationsErrorCopyWith(_$StateLocationsError value,
          $Res Function(_$StateLocationsError) then) =
      __$$StateLocationsErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$StateLocationsErrorCopyWithImpl<$Res>
    extends _$StateBlocLocationsCopyWithImpl<$Res>
    implements _$$StateLocationsErrorCopyWith<$Res> {
  __$$StateLocationsErrorCopyWithImpl(
      _$StateLocationsError _value, $Res Function(_$StateLocationsError) _then)
      : super(_value, (v) => _then(v as _$StateLocationsError));

  @override
  _$StateLocationsError get _value => super._value as _$StateLocationsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StateLocationsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateLocationsError implements StateLocationsError {
  const _$StateLocationsError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StateBlocLocations.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateLocationsError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$StateLocationsErrorCopyWith<_$StateLocationsError> get copyWith =>
      __$$StateLocationsErrorCopyWithImpl<_$StateLocationsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationsInitial value) initial,
    required TResult Function(StateLocationsLoading value) loading,
    required TResult Function(StateLocationsData value) data,
    required TResult Function(StateLocationsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationsInitial value)? initial,
    TResult Function(StateLocationsLoading value)? loading,
    TResult Function(StateLocationsData value)? data,
    TResult Function(StateLocationsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateLocationsError implements StateBlocLocations {
  const factory StateLocationsError(final String error) = _$StateLocationsError;

  String get error;
  @JsonKey(ignore: true)
  _$$StateLocationsErrorCopyWith<_$StateLocationsError> get copyWith =>
      throw _privateConstructorUsedError;
}
