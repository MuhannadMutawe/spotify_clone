import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_app/domain/entities/auth/user.dart';

part 'get_user_state.freezed.dart';

@freezed
class GetUserState with _$GetUserState {
  const factory GetUserState.initial() = _Initial;
  const factory GetUserState.loading() = GetUserLoading;
  const factory GetUserState.success(UserEntity user) = GetUserSuccess;
  const factory GetUserState.failure(String errorMessage) = GetUserFailure;
}
