import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewer_state.freezed.dart';

@freezed
abstract class ViewerState with _$ViewerState {
  const factory ViewerState({
    bool transformEnable,
    bool scaleEnable,
    bool isScale,
    bool isInteractionStart,
    bool isInteractionEnd,
  }) = _ViewerState;
}
