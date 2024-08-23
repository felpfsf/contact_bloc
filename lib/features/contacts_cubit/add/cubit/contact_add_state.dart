part of 'contact_add_cubit.dart';

@freezed
class ContactAddState with _$ContactAddState {
  const factory ContactAddState.initial() = _Initial;
  const factory ContactAddState.loading() = _Loading;
  const factory ContactAddState.success() = _Success;
  const factory ContactAddState.failure({required String message}) = _Failure;
}
