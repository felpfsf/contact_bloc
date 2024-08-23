part of 'contact_list_bloc.dart';

@freezed
class ContactListEvent with _$ContactListEvent {
  const factory ContactListEvent.findAll() = _ContactListFindAllEvent;
  const factory ContactListEvent.delete(ContactModel contact) =
      _ContactListDeleteEvent;
}
