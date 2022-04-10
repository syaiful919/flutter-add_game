import 'package:add_game/games/waste_sorting/models/waste_type.dart';
import 'package:flame/components.dart';

class Item extends SpriteComponent with HasGameRef {
  Item({
    required this.imagePath,
    required this.type,
    required this.initialPos,
  });

  final String imagePath;
  final WasteType type;
  final Vector2 initialPos;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite(imagePath);
    size = Vector2.all(75);
    priority = 1;
    anchor = Anchor.center;
    position = initialPos;
  }
}
