part of 'freezed_bloc.dart';


@freezed
class FreezedBlocEvent with _$FreezedBlocEvent {
  const factory FreezedBlocEvent.findContacts() = _FreedBlocEventFindContacts;
  const factory FreezedBlocEvent.addContact({required String contact}) = _FreezedBlocEventAddContact;
  const factory FreezedBlocEvent.removeContact({required String contact}) = _FreezedBlocEventRemoveContact;
}