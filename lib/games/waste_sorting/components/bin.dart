import 'package:add_game/games/waste_sorting/models/waste_type.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Bin extends SpriteComponent with HasGameRef, CollisionCallbacks {
  Bin({
    required this.imagePath,
    required this.type,
    required this.initialPos,
  });

  final String imagePath;
  final WasteType type;
  final Vector2 initialPos;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite(imagePath);
    size = Vector2.all(150);
    priority = 2;
    anchor = Anchor.center;
    position = initialPos;

    final hitbox = RectangleHitbox(
      size: size / 2,
      position: size / 2,
      anchor: Anchor.center,
    );

    add(hitbox);
  }
}
