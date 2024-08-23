// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactRegisterEvent {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email) addContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email)? addContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email)? addContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddContact value) addContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddContact value)? addContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddContact value)? addContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactRegisterEventCopyWith<ContactRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactRegisterEventCopyWith<$Res> {
  factory $ContactRegisterEventCopyWith(ContactRegisterEvent value,
          $Res Function(ContactRegisterEvent) then) =
      _$ContactRegisterEventCopyWithImpl<$Res, ContactRegisterEvent>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$ContactRegisterEventCopyWithImpl<$Res,
        $Val extends ContactRegisterEvent>
    implements $ContactRegisterEventCopyWith<$Res> {
  _$ContactRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddContactImplCopyWith<$Res>
    implements $ContactRegisterEventCopyWith<$Res> {
  factory _$$AddContactImplCopyWith(
          _$AddContactImpl value, $Res Function(_$AddContactImpl) then) =
      __$$AddContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$AddContactImplCopyWithImpl<$Res>
    extends _$ContactRegisterEventCopyWithImpl<$Res, _$AddContactImpl>
    implements _$$AddContactImplCopyWith<$Res> {
  __$$AddContactImplCopyWithImpl(
      _$AddContactImpl _value, $Res Function(_$AddContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$AddContactImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddContactImpl implements _AddContact {
  const _$AddContactImpl({required this.name, required this.email});

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'ContactRegisterEvent.addContact(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddContactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddContactImplCopyWith<_$AddContactImpl> get copyWith =>
      __$$AddContactImplCopyWithImpl<_$AddContactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email) addContact,
  }) {
    return addContact(name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email)? addContact,
  }) {
    return addContact?.call(name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email)? addContact,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddContact value) addContact,
  }) {
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddContact value)? addContact,
  }) {
    return addContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddContact value)? addContact,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class _AddContact implements ContactRegisterEvent {
  const factory _AddContact(
      {required final String name,
      required final String email}) = _$AddContactImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$AddContactImplCopyWith<_$AddContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactRegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateSuccess value) success,
    required TResult Function(_StateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateSuccess value)? success,
    TResult? Function(_StateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateSuccess value)? success,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactRegisterStateCopyWith<$Res> {
  factory $ContactRegisterStateCopyWith(ContactRegisterState value,
          $Res Function(ContactRegisterState) then) =
      _$ContactRegisterStateCopyWithImpl<$Res, ContactRegisterState>;
}

/// @nodoc
class _$ContactRegisterStateCopyWithImpl<$Res,
        $Val extends ContactRegisterState>
    implements $ContactRegisterStateCopyWith<$Res> {
  _$ContactRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StateInitialImplCopyWith<$Res> {
  factory _$$StateInitialImplCopyWith(
          _$StateInitialImpl value, $Res Function(_$StateInitialImpl) then) =
      __$$StateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateInitialImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res, _$StateInitialImpl>
    implements _$$StateInitialImplCopyWith<$Res> {
  __$$StateInitialImplCopyWithImpl(
      _$StateInitialImpl _value, $Res Function(_$StateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateInitialImpl implements _StateInitial {
  const _$StateInitialImpl();

  @override
  String toString() {
    return 'ContactRegisterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateSuccess value) success,
    required TResult Function(_StateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateSuccess value)? success,
    TResult? Function(_StateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateSuccess value)? success,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StateInitial implements ContactRegisterState {
  const factory _StateInitial() = _$StateInitialImpl;
}

/// @nodoc
abstract class _$$StateLoadingImplCopyWith<$Res> {
  factory _$$StateLoadingImplCopyWith(
          _$StateLoadingImpl value, $Res Function(_$StateLoadingImpl) then) =
      __$$StateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateLoadingImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res, _$StateLoadingImpl>
    implements _$$StateLoadingImplCopyWith<$Res> {
  __$$StateLoadingImplCopyWithImpl(
      _$StateLoadingImpl _value, $Res Function(_$StateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateLoadingImpl implements _StateLoading {
  const _$StateLoadingImpl();

  @override
  String toString() {
    return 'ContactRegisterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateSuccess value) success,
    required TResult Function(_StateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateSuccess value)? success,
    TResult? Function(_StateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateSuccess value)? success,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StateLoading implements ContactRegisterState {
  const factory _StateLoading() = _$StateLoadingImpl;
}

/// @nodoc
abstract class _$$StateSuccessImplCopyWith<$Res> {
  factory _$$StateSuccessImplCopyWith(
          _$StateSuccessImpl value, $Res Function(_$StateSuccessImpl) then) =
      __$$StateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateSuccessImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res, _$StateSuccessImpl>
    implements _$$StateSuccessImplCopyWith<$Res> {
  __$$StateSuccessImplCopyWithImpl(
      _$StateSuccessImpl _value, $Res Function(_$StateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateSuccessImpl implements _StateSuccess {
  const _$StateSuccessImpl();

  @override
  String toString() {
    return 'ContactRegisterState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateSuccess value) success,
    required TResult Function(_StateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateSuccess value)? success,
    TResult? Function(_StateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateSuccess value)? success,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StateSuccess implements ContactRegisterState {
  const factory _StateSuccess() = _$StateSuccessImpl;
}

/// @nodoc
abstract class _$$StateErrorImplCopyWith<$Res> {
  factory _$$StateErrorImplCopyWith(
          _$StateErrorImpl value, $Res Function(_$StateErrorImpl) then) =
      __$$StateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StateErrorImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res, _$StateErrorImpl>
    implements _$$StateErrorImplCopyWith<$Res> {
  __$$StateErrorImplCopyWithImpl(
      _$StateErrorImpl _value, $Res Function(_$StateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateErrorImpl implements _StateError {
  const _$StateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ContactRegisterState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateErrorImplCopyWith<_$StateErrorImpl> get copyWith =>
      __$$StateErrorImplCopyWithImpl<_$StateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateSuccess value) success,
    required TResult Function(_StateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateSuccess value)? success,
    TResult? Function(_StateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateSuccess value)? success,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError implements ContactRegisterState {
  const factory _StateError(final String message) = _$StateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StateErrorImplCopyWith<_$StateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
