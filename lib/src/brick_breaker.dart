import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame_game_1/src/components/components.dart';
import 'package:flame_game_1/src/components/play_area.dart';
import 'package:flame_game_1/src/config.dart';
import 'dart:math' as math;

class BrickBreaker extends FlameGame {
  BrickBreaker()
      : super(
          camera: CameraComponent.withFixedResolution(
              width: gameWidth, height: gameHeight),
        );

  final rand = math.Random();
  double get width => size.x;
  double get height => size.y;

  @override
  FutureOr<void> onLoad() {
    super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;
    world.add(PlayArea());
    world.add(Ball(
        velocity:
            Vector2((rand.nextDouble() - 0.5) * width, height).normalized()
              ..scale(height / 4),
        position: size / 2,
        radius: ballRadius));

        debugMode = true;
  }
}
