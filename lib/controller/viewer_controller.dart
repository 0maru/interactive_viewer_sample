import 'package:flutter/material.dart';
import 'package:interactive_viewer_sample/model/viewer_state.dart';
import 'package:state_notifier/state_notifier.dart';

class ViewerController extends StateNotifier<ViewerState> {
  ViewerController()
      : super(ViewerState(
          transformEnable: false,
          scaleEnable: true,
          isScale: false,
          isInteractionStart: false,
          isInteractionEnd: false,
        ));

  // ViewerController
  final _controller = TransformationController();
  TransformationController get controller => _controller;

  // ダブルタップ
  onDoubleTap() {}

  // pan を許可する
  enableTransform() {
    if (state.isScale) {
      return;
    }

    state = state.copyWith(transformEnable: true, isScale: true);
  }

  disableTransform() {
    // state = state.copyWith(transformEnable: true, isScale: false);
  }

  // 初期状態に戻す
  clear() {
    controller.value = Matrix4.identity();
    state = state.copyWith(
      transformEnable: false,
      scaleEnable: true,
      isScale: false,
    );
  }
}
