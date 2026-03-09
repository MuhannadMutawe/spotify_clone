import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = SignInLoading;
  const factory SignInState.success() = SignInSuccess;
  const factory SignInState.failure(String errorMessage) = SignInFailure;
}
