part of 'contact_register_bloc.dart';

@freezed
class ContactRegisterState with _$ContactRegisterState {
  const factory ContactRegisterState.initial() = _StateInitial;
  const factory ContactRegisterState.loading() = _StateLoading;
  const factory ContactRegisterState.success() = _StateSuccess;
  const factory ContactRegisterState.error(String message) = _StateError;
}
