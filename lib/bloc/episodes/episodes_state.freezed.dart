// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episodes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateBlocEpisodes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateEpisodesInitial value) initial,
    required TResult Function(StateEpisodesLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocEpisodesCopyWith<$Res> {
  factory $StateBlocEpisodesCopyWith(
          StateBlocEpisodes value, $Res Function(StateBlocEpisodes) then) =
      _$StateBlocEpisodesCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateBlocEpisodesCopyWithImpl<$Res>
    implements $StateBlocEpisodesCopyWith<$Res> {
  _$StateBlocEpisodesCopyWithImpl(this._value, this._then);

  final StateBlocEpisodes _value;
  // ignore: unused_field
  final $Res Function(StateBlocEpisodes) _then;
}

/// @nodoc
abstract class _$$StateEpisodesDataCopyWith<$Res> {
  factory _$$StateEpisodesDataCopyWith(
          _$StateEpisodesData value, $Res Function(_$StateEpisodesData) then) =
      __$$StateEpisodesDataCopyWithImpl<$Res>;
  $Res call({List<Episode> data, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$StateEpisodesDataCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res>
    implements _$$StateEpisodesDataCopyWith<$Res> {
  __$$StateEpisodesDataCopyWithImpl(
      _$StateEpisodesData _value, $Res Function(_$StateEpisodesData) _then)
      : super(_value, (v) => _then(v as _$StateEpisodesData));

  @override
  _$StateEpisodesData get _value => super._value as _$StateEpisodesData;

  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$StateEpisodesData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StateEpisodesData implements StateEpisodesData {
  const _$StateEpisodesData(
      {required final List<Episode> data,
      this.isLoading = false,
      this.errorMessage})
      : _data = data;

  final List<Episode> _data;
  @override
  List<Episode> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'StateBlocEpisodes.data(data: $data, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateEpisodesData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$StateEpisodesDataCopyWith<_$StateEpisodesData> get copyWith =>
      __$$StateEpisodesDataCopyWithImpl<_$StateEpisodesData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return data?.call(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateEpisodesInitial value) initial,
    required TResult Function(StateEpisodesLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StateEpisodesData implements StateBlocEpisodes {
  const factory StateEpisodesData(
      {required final List<Episode> data,
      final bool isLoading,
      final String? errorMessage}) = _$StateEpisodesData;

  List<Episode> get data;
  bool get isLoading;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$StateEpisodesDataCopyWith<_$StateEpisodesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateEpisodesErrorCopyWith<$Res> {
  factory _$$StateEpisodesErrorCopyWith(_$StateEpisodesError value,
          $Res Function(_$StateEpisodesError) then) =
      __$$StateEpisodesErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$StateEpisodesErrorCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res>
    implements _$$StateEpisodesErrorCopyWith<$Res> {
  __$$StateEpisodesErrorCopyWithImpl(
      _$StateEpisodesError _value, $Res Function(_$StateEpisodesError) _then)
      : super(_value, (v) => _then(v as _$StateEpisodesError));

  @override
  _$StateEpisodesError get _value => super._value as _$StateEpisodesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StateEpisodesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateEpisodesError implements StateEpisodesError {
  const _$StateEpisodesError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StateBlocEpisodes.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateEpisodesError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$StateEpisodesErrorCopyWith<_$StateEpisodesError> get copyWith =>
      __$$StateEpisodesErrorCopyWithImpl<_$StateEpisodesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateEpisodesInitial value) initial,
    required TResult Function(StateEpisodesLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateEpisodesError implements StateBlocEpisodes {
  const factory StateEpisodesError(final String error) = _$StateEpisodesError;

  String get error;
  @JsonKey(ignore: true)
  _$$StateEpisodesErrorCopyWith<_$StateEpisodesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateEpisodesInitialCopyWith<$Res> {
  factory _$$StateEpisodesInitialCopyWith(_$StateEpisodesInitial value,
          $Res Function(_$StateEpisodesInitial) then) =
      __$$StateEpisodesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateEpisodesInitialCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res>
    implements _$$StateEpisodesInitialCopyWith<$Res> {
  __$$StateEpisodesInitialCopyWithImpl(_$StateEpisodesInitial _value,
      $Res Function(_$StateEpisodesInitial) _then)
      : super(_value, (v) => _then(v as _$StateEpisodesInitial));

  @override
  _$StateEpisodesInitial get _value => super._value as _$StateEpisodesInitial;
}

/// @nodoc

class _$StateEpisodesInitial implements StateEpisodesInitial {
  const _$StateEpisodesInitial();

  @override
  String toString() {
    return 'StateBlocEpisodes.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateEpisodesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateEpisodesInitial value) initial,
    required TResult Function(StateEpisodesLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateEpisodesInitial implements StateBlocEpisodes {
  const factory StateEpisodesInitial() = _$StateEpisodesInitial;
}

/// @nodoc
abstract class _$$StateEpisodesLoadingCopyWith<$Res> {
  factory _$$StateEpisodesLoadingCopyWith(_$StateEpisodesLoading value,
          $Res Function(_$StateEpisodesLoading) then) =
      __$$StateEpisodesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateEpisodesLoadingCopyWithImpl<$Res>
    extends _$StateBlocEpisodesCopyWithImpl<$Res>
    implements _$$StateEpisodesLoadingCopyWith<$Res> {
  __$$StateEpisodesLoadingCopyWithImpl(_$StateEpisodesLoading _value,
      $Res Function(_$StateEpisodesLoading) _then)
      : super(_value, (v) => _then(v as _$StateEpisodesLoading));

  @override
  _$StateEpisodesLoading get _value => super._value as _$StateEpisodesLoading;
}

/// @nodoc

class _$StateEpisodesLoading implements StateEpisodesLoading {
  const _$StateEpisodesLoading();

  @override
  String toString() {
    return 'StateBlocEpisodes.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateEpisodesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(StateEpisodesData value) data,
    required TResult Function(StateEpisodesError value) error,
    required TResult Function(StateEpisodesInitial value) initial,
    required TResult Function(StateEpisodesLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodesData value)? data,
    TResult Function(StateEpisodesError value)? error,
    TResult Function(StateEpisodesInitial value)? initial,
    TResult Function(StateEpisodesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateEpisodesLoading implements StateBlocEpisodes {
  const factory StateEpisodesLoading() = _$StateEpisodesLoading;
}
