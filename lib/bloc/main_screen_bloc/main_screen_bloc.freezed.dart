// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(int index, List<UserEntity> users) selectUser,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(int index, List<UserEntity> users)? selectUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(int index, List<UserEntity> users)? selectUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_SelectUser value) selectUser,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_SelectUser value)? selectUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_SelectUser value)? selectUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res, MainScreenEvent>;
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res, $Val extends MainScreenEvent>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDataCopyWith<$Res> {
  factory _$$_GetDataCopyWith(
          _$_GetData value, $Res Function(_$_GetData) then) =
      __$$_GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDataCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$_GetData>
    implements _$$_GetDataCopyWith<$Res> {
  __$$_GetDataCopyWithImpl(_$_GetData _value, $Res Function(_$_GetData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetData implements _GetData {
  const _$_GetData();

  @override
  String toString() {
    return 'MainScreenEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(int index, List<UserEntity> users) selectUser,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(int index, List<UserEntity> users)? selectUser,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(int index, List<UserEntity> users)? selectUser,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_SelectUser value) selectUser,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_SelectUser value)? selectUser,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_SelectUser value)? selectUser,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements MainScreenEvent {
  const factory _GetData() = _$_GetData;
}

/// @nodoc
abstract class _$$_SelectUserCopyWith<$Res> {
  factory _$$_SelectUserCopyWith(
          _$_SelectUser value, $Res Function(_$_SelectUser) then) =
      __$$_SelectUserCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, List<UserEntity> users});
}

/// @nodoc
class __$$_SelectUserCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$_SelectUser>
    implements _$$_SelectUserCopyWith<$Res> {
  __$$_SelectUserCopyWithImpl(
      _$_SelectUser _value, $Res Function(_$_SelectUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? users = null,
  }) {
    return _then(_$_SelectUser(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$_SelectUser implements _SelectUser {
  const _$_SelectUser(this.index, final List<UserEntity> users)
      : _users = users;

  @override
  final int index;
  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'MainScreenEvent.selectUser(index: $index, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectUser &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectUserCopyWith<_$_SelectUser> get copyWith =>
      __$$_SelectUserCopyWithImpl<_$_SelectUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(int index, List<UserEntity> users) selectUser,
  }) {
    return selectUser(index, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(int index, List<UserEntity> users)? selectUser,
  }) {
    return selectUser?.call(index, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(int index, List<UserEntity> users)? selectUser,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(index, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_SelectUser value) selectUser,
  }) {
    return selectUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_SelectUser value)? selectUser,
  }) {
    return selectUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_SelectUser value)? selectUser,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(this);
    }
    return orElse();
  }
}

abstract class _SelectUser implements MainScreenEvent {
  const factory _SelectUser(final int index, final List<UserEntity> users) =
      _$_SelectUser;

  int get index;
  List<UserEntity> get users;
  @JsonKey(ignore: true)
  _$$_SelectUserCopyWith<_$_SelectUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<UserEntity> users, int selectedUserIndex)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<UserEntity> users, int selectedUserIndex)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<UserEntity> users, int selectedUserIndex)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MainScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<UserEntity> users, int selectedUserIndex)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<UserEntity> users, int selectedUserIndex)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<UserEntity> users, int selectedUserIndex)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MainScreenState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_Error(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MainScreenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<UserEntity> users, int selectedUserIndex)
        loaded,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<UserEntity> users, int selectedUserIndex)? loaded,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<UserEntity> users, int selectedUserIndex)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MainScreenState {
  const factory _Error(final String errorMessage) = _$_Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> users, int selectedUserIndex});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? selectedUserIndex = null,
  }) {
    return _then(_$_Loaded(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      null == selectedUserIndex
          ? _value.selectedUserIndex
          : selectedUserIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<UserEntity> users, this.selectedUserIndex)
      : _users = users;

  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final int selectedUserIndex;

  @override
  String toString() {
    return 'MainScreenState.loaded(users: $users, selectedUserIndex: $selectedUserIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.selectedUserIndex, selectedUserIndex) ||
                other.selectedUserIndex == selectedUserIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), selectedUserIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<UserEntity> users, int selectedUserIndex)
        loaded,
  }) {
    return loaded(users, selectedUserIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<UserEntity> users, int selectedUserIndex)? loaded,
  }) {
    return loaded?.call(users, selectedUserIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<UserEntity> users, int selectedUserIndex)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users, selectedUserIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MainScreenState {
  const factory _Loaded(
      final List<UserEntity> users, final int selectedUserIndex) = _$_Loaded;

  List<UserEntity> get users;
  int get selectedUserIndex;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
