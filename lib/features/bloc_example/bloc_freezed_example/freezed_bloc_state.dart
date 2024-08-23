part of 'freezed_bloc.dart';

@freezed
abstract class FreezedBlocState with _$FreezedBlocState {
  factory FreezedBlocState.initial() = _FreezedBlocStateInitial;

  factory FreezedBlocState.loading() = _FreezedBlocStateLoading;

  factory FreezedBlocState.error({required String message}) =
      _FreezedBlocStateError;

  factory FreezedBlocState.success({required String message}) =
      _FreezedBlocStateSuccess;

  factory FreezedBlocState.showBanner({
    required List<String> contacts,
    required String message,
  }) = _FreezedBlocStateBanner;

  factory FreezedBlocState.data({required List<String> contacts}) =
      _FreezedBlocStateData;
}
