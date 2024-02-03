import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_game_1/src/brick_breaker.dart';
import 'package:flutter/material.dart';

class PlayArea extends RectangleComponent with HasGameRef<BrickBreaker> {
  PlayArea() : super(paint: Paint()..color = Color(0xfff2e8cf),children: [RectangleHitbox()]);

  @override
  FutureOr<void> onLoad() {
    super.onLoad();

    size = Vector2(game.width, game.height);
  }
}
