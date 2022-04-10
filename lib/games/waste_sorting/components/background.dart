import 'package:flutter/material.dart';
import 'package:flame/components.dart';

class Background extends PositionComponent with HasGameRef {
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), Paint()..color = Colors.white);
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    priority = -1;
    size = gameRef.size;
  }
}
