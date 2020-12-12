import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:interactive_viewer_sample/controller/viewer_controller.dart';
import 'package:provider/provider.dart';

import 'model/viewer_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final TransformationController _transformationController = TransformationController();
  Animation<Matrix4> _animationReset;
  AnimationController _controllerReset;

  void _onAnimateReset() {
    _transformationController.value = _animationReset.value;
    if (!_controllerReset.isAnimating) {
      _animationReset?.removeListener(_onAnimateReset);
      _animationReset = null;
      _controllerReset.reset();
    }
  }

  void _animateResetInitialize() {
    _controllerReset.reset();
    _animationReset = Matrix4Tween(
      begin: _transformationController.value,
      end: Matrix4.identity(),
    ).animate(_controllerReset);
    _animationReset.addListener(_onAnimateReset);
    _controllerReset.forward();
  }

  void _animateResetStop() {
    _controllerReset.stop();
    _animationReset?.removeListener(_onAnimateReset);
    _animationReset = null;
    _controllerReset.reset();
  }

  void _onInteractionStart(ScaleStartDetails details) {
    print('start');
    // If the user tries to cause a transformation while the reset animation is
    // running, cancel the reset animation.
    if (_controllerReset.status == AnimationStatus.forward) {
      _animateResetStop();
    }
  }

  @override
  void initState() {
    super.initState();
    _controllerReset = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    _controllerReset.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ViewerController, ViewerState>(
      create: (_) => ViewerController(),
      builder: (context, __) {
        return Scaffold(
          body: PageView(
            physics: context.select((ViewerState s) => s.scaleEnable)
                ? NeverScrollableScrollPhysics()
                : AlwaysScrollableScrollPhysics(),
            children: [
              for (var i in [1, 2, 3, 4, 5]) _buildViewer(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildViewer(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        context.read<ViewerController>().clear();
      },
      child: InteractiveViewer(
        child: _buildViewChild(context),
        transformationController: context.select((ViewerController c) => c.controller),
        boundaryMargin: EdgeInsets.all(20.0),
        minScale: 0.1,
        maxScale: 2.0,
        // panEnabled: context.select((ViewerState s) => s.transformEnable),
        scaleEnabled: context.select((ViewerState s) => s.scaleEnable),
        panEnabled: true,
        // scaleEnabled: true,
        constrained: false,
        onInteractionStart: _onInteractionStart,
        onInteractionUpdate: (details) {
          print('scale: ${details.scale}');
          // 拡大したら移動を許可する
          // if (details.scale > 1.1) {
          //   context.read<ViewerController>().enableTransform();
          // } else {
          //   context.read<ViewerController>().disableTransform();
          // }
          // print('rotation: ${details.rotation}');
          // print('focalPoint: ${details.focalPoint}');
          // print('localFocalPoint: ${details.localFocalPoint}');
          // print('horizontalScale: ${details.horizontalScale}');
          // print('verticalScale: ${details.verticalScale}');
        },
        onInteractionEnd: (details) {
          print('end');
          // print(': ${details.velocity}');
        },
      ),
    );
  }

  Widget _buildViewChild(BuildContext context) {
    return Image.asset(
      'assets/image.jpg',
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fitWidth,
      alignment: Alignment.center,
    );
  }
}
