part of 'contact_update_cubit.dart';

@freezed
class ContactUpdateState with _$ContactUpdateState {
  const factory ContactUpdateState.initial() = _Initial;
  const factory ContactUpdateState.loading() = _Loading;
  const factory ContactUpdateState.success() = _Success;
  const factory ContactUpdateState.failure({required String message}) =
      _Failure;
}
