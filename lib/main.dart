import 'package:flame/game.dart';
import 'package:flame_game_1/src/brick_breaker.dart';
import 'package:flutter/material.dart';

void main() {
  final game = BrickBreaker();
  runApp(GameWidget(game: game));
}
