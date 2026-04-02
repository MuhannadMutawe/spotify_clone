import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_button_state.freezed.dart';

@freezed
class FavoriteButtonState with _$FavoriteButtonState {
  const factory FavoriteButtonState.initial() = _Initial;
  const factory FavoriteButtonState.updated(bool isFavorite) =
      FavoriteButtonUpdated;
}
