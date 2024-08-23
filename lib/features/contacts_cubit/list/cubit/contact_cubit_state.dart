part of 'contact_cubit_cubit.dart';

@freezed
class ContactCubitState with _$ContactCubitState {
  const factory ContactCubitState.initial() = _Initial;
  const factory ContactCubitState.loading() = _Loading;
  factory ContactCubitState.data({required List<ContactModel> contacts}) =
      _Data;
  const factory ContactCubitState.error({required String message}) = _Error;
}
