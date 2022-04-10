import 'package:add_game/games/waste_sorting/components/bin.dart';
import 'package:add_game/games/waste_sorting/models/waste_type.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';

class Item extends SpriteComponent
    with HasGameRef, Draggable, CollisionCallbacks {
  Item({
    required this.imagePath,
    required this.type,
    required this.initialPos,
  });

  final String imagePath;
  final WasteType type;
  final Vector2 initialPos;

  Vector2? dragDeltaPosition;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite(imagePath);
    size = Vector2.all(75);
    priority = 1;
    anchor = Anchor.center;
    position = initialPos;
    add(RectangleHitbox());
  }

  @override
  bool onDragStart(DragStartInfo info) {
    dragDeltaPosition = info.eventPosition.game - position;
    return false;
  }

  @override
  bool onDragUpdate(DragUpdateInfo info) {
    final dragDeltaPosition = this.dragDeltaPosition;

    if (dragDeltaPosition == null) {
      return false;
    }

    position.setFrom(info.eventPosition.game - dragDeltaPosition);
    return false;
  }

  @override
  bool onDragEnd(DragEndInfo info) {
    dragDeltaPosition = null;
    return false;
  }

  @override
  bool onDragCancel() {
    dragDeltaPosition = null;
    return false;
  }

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    super.onCollisionStart(intersectionPoints, other);

    if (other is Bin) {
      if (other.type == type) {
        removeFromParent();
      } else {
        dragDeltaPosition = null;
        position = initialPos;
      }
    }
  }
}
