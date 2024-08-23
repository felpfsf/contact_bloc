// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactModel contact) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactModel contact)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactModel contact)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListFindAllEvent value) findAll,
    required TResult Function(_ContactListDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListFindAllEvent value)? findAll,
    TResult? Function(_ContactListDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListFindAllEvent value)? findAll,
    TResult Function(_ContactListDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res, ContactListEvent>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res, $Val extends ContactListEvent>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContactListFindAllEventImplCopyWith<$Res> {
  factory _$$ContactListFindAllEventImplCopyWith(
          _$ContactListFindAllEventImpl value,
          $Res Function(_$ContactListFindAllEventImpl) then) =
      __$$ContactListFindAllEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactListFindAllEventImplCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$ContactListFindAllEventImpl>
    implements _$$ContactListFindAllEventImplCopyWith<$Res> {
  __$$ContactListFindAllEventImplCopyWithImpl(
      _$ContactListFindAllEventImpl _value,
      $Res Function(_$ContactListFindAllEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactListFindAllEventImpl
    with DiagnosticableTreeMixin
    implements _ContactListFindAllEvent {
  const _$ContactListFindAllEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListEvent.findAll()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ContactListEvent.findAll'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListFindAllEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactModel contact) delete,
  }) {
    return findAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactModel contact)? delete,
  }) {
    return findAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactModel contact)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListFindAllEvent value) findAll,
    required TResult Function(_ContactListDeleteEvent value) delete,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListFindAllEvent value)? findAll,
    TResult? Function(_ContactListDeleteEvent value)? delete,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListFindAllEvent value)? findAll,
    TResult Function(_ContactListDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class _ContactListFindAllEvent implements ContactListEvent {
  const factory _ContactListFindAllEvent() = _$ContactListFindAllEventImpl;
}

/// @nodoc
abstract class _$$ContactListDeleteEventImplCopyWith<$Res> {
  factory _$$ContactListDeleteEventImplCopyWith(
          _$ContactListDeleteEventImpl value,
          $Res Function(_$ContactListDeleteEventImpl) then) =
      __$$ContactListDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactModel contact});
}

/// @nodoc
class __$$ContactListDeleteEventImplCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$ContactListDeleteEventImpl>
    implements _$$ContactListDeleteEventImplCopyWith<$Res> {
  __$$ContactListDeleteEventImplCopyWithImpl(
      _$ContactListDeleteEventImpl _value,
      $Res Function(_$ContactListDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$ContactListDeleteEventImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel,
    ));
  }
}

/// @nodoc

class _$ContactListDeleteEventImpl
    with DiagnosticableTreeMixin
    implements _ContactListDeleteEvent {
  const _$ContactListDeleteEventImpl(this.contact);

  @override
  final ContactModel contact;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListEvent.delete(contact: $contact)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactListEvent.delete'))
      ..add(DiagnosticsProperty('contact', contact));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListDeleteEventImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactListDeleteEventImplCopyWith<_$ContactListDeleteEventImpl>
      get copyWith => __$$ContactListDeleteEventImplCopyWithImpl<
          _$ContactListDeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactModel contact) delete,
  }) {
    return delete(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactModel contact)? delete,
  }) {
    return delete?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactModel contact)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListFindAllEvent value) findAll,
    required TResult Function(_ContactListDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListFindAllEvent value)? findAll,
    TResult? Function(_ContactListDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListFindAllEvent value)? findAll,
    TResult Function(_ContactListDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _ContactListDeleteEvent implements ContactListEvent {
  const factory _ContactListDeleteEvent(final ContactModel contact) =
      _$ContactListDeleteEventImpl;

  ContactModel get contact;
  @JsonKey(ignore: true)
  _$$ContactListDeleteEventImplCopyWith<_$ContactListDeleteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res, ContactListState>;
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res, $Val extends ContactListState>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContactListStateInitialImplCopyWith<$Res> {
  factory _$$ContactListStateInitialImplCopyWith(
          _$ContactListStateInitialImpl value,
          $Res Function(_$ContactListStateInitialImpl) then) =
      __$$ContactListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactListStateInitialImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateInitialImpl>
    implements _$$ContactListStateInitialImplCopyWith<$Res> {
  __$$ContactListStateInitialImplCopyWithImpl(
      _$ContactListStateInitialImpl _value,
      $Res Function(_$ContactListStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactListStateInitialImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateInitial {
  _$ContactListStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ContactListState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateInitial implements ContactListState {
  factory _ContactListStateInitial() = _$ContactListStateInitialImpl;
}

/// @nodoc
abstract class _$$ContactListStateDataImplCopyWith<$Res> {
  factory _$$ContactListStateDataImplCopyWith(_$ContactListStateDataImpl value,
          $Res Function(_$ContactListStateDataImpl) then) =
      __$$ContactListStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactModel> contacts});
}

/// @nodoc
class __$$ContactListStateDataImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateDataImpl>
    implements _$$ContactListStateDataImplCopyWith<$Res> {
  __$$ContactListStateDataImplCopyWithImpl(_$ContactListStateDataImpl _value,
      $Res Function(_$ContactListStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$ContactListStateDataImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ));
  }
}

/// @nodoc

class _$ContactListStateDataImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateData {
  _$ContactListStateDataImpl({required final List<ContactModel> contacts})
      : _contacts = contacts;

  final List<ContactModel> _contacts;
  @override
  List<ContactModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.data(contacts: $contacts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactListState.data'))
      ..add(DiagnosticsProperty('contacts', contacts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateDataImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactListStateDataImplCopyWith<_$ContactListStateDataImpl>
      get copyWith =>
          __$$ContactListStateDataImplCopyWithImpl<_$ContactListStateDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return data(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return data?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateData implements ContactListState {
  factory _ContactListStateData({required final List<ContactModel> contacts}) =
      _$ContactListStateDataImpl;

  List<ContactModel> get contacts;
  @JsonKey(ignore: true)
  _$$ContactListStateDataImplCopyWith<_$ContactListStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactListStateErrorImplCopyWith<$Res> {
  factory _$$ContactListStateErrorImplCopyWith(
          _$ContactListStateErrorImpl value,
          $Res Function(_$ContactListStateErrorImpl) then) =
      __$$ContactListStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ContactListStateErrorImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateErrorImpl>
    implements _$$ContactListStateErrorImplCopyWith<$Res> {
  __$$ContactListStateErrorImplCopyWithImpl(_$ContactListStateErrorImpl _value,
      $Res Function(_$ContactListStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ContactListStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactListStateErrorImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateError {
  _$ContactListStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactListState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactListStateErrorImplCopyWith<_$ContactListStateErrorImpl>
      get copyWith => __$$ContactListStateErrorImplCopyWithImpl<
          _$ContactListStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateError implements ContactListState {
  factory _ContactListStateError(final String message) =
      _$ContactListStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ContactListStateErrorImplCopyWith<_$ContactListStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactListStateLoadingImplCopyWith<$Res> {
  factory _$$ContactListStateLoadingImplCopyWith(
          _$ContactListStateLoadingImpl value,
          $Res Function(_$ContactListStateLoadingImpl) then) =
      __$$ContactListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactListStateLoadingImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateLoadingImpl>
    implements _$$ContactListStateLoadingImplCopyWith<$Res> {
  __$$ContactListStateLoadingImplCopyWithImpl(
      _$ContactListStateLoadingImpl _value,
      $Res Function(_$ContactListStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactListStateLoadingImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateLoading {
  _$ContactListStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ContactListState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateLoading implements ContactListState {
  factory _ContactListStateLoading() = _$ContactListStateLoadingImpl;
}

/// @nodoc
abstract class _$$ContactListStateSuccessImplCopyWith<$Res> {
  factory _$$ContactListStateSuccessImplCopyWith(
          _$ContactListStateSuccessImpl value,
          $Res Function(_$ContactListStateSuccessImpl) then) =
      __$$ContactListStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactListStateSuccessImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$ContactListStateSuccessImpl>
    implements _$$ContactListStateSuccessImplCopyWith<$Res> {
  __$$ContactListStateSuccessImplCopyWithImpl(
      _$ContactListStateSuccessImpl _value,
      $Res Function(_$ContactListStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactListStateSuccessImpl
    with DiagnosticableTreeMixin
    implements _ContactListStateSuccess {
  _$ContactListStateSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactListState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ContactListState.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContactModel> contacts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContactModel> contacts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContactModel> contacts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateData value)? data,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateSuccess implements ContactListState {
  factory _ContactListStateSuccess() = _$ContactListStateSuccessImpl;
}
