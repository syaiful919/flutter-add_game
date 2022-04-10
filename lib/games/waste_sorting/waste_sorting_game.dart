import 'package:flame/game.dart';

import 'package:add_game/games/waste_sorting/components/bin.dart';
import 'package:add_game/games/waste_sorting/components/item.dart';
import 'package:add_game/games/waste_sorting/models/waste_type.dart';
import 'package:add_game/games/waste_sorting/components/background.dart';

class WasteSortingGame extends FlameGame
    with HasDraggables, HasCollisionDetection {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    addBackground();
    addItems();
    addBins();
  }

  void addBackground() {
    add(Background());
  }

  void addItems() {
    const y = 200.0;

    final item1Pos = Vector2(size.x / 2 + 75, y);
    final item1 = Item(
      imagePath: 'garbage/apple.png',
      type: WasteType.organic,
      initialPos: item1Pos,
    );
    add(item1);

    final item2Pos = Vector2(size.x / 2 - 75, y);
    final item2 = Item(
      imagePath: 'garbage/plastic-bottle.png',
      type: WasteType.recyclables,
      initialPos: item2Pos,
    );
    add(item2);
  }

  void addBins() {
    final y = size.y - 200;

    final bin1Pos = Vector2(100, y);
    final bin1 = Bin(
      imagePath: 'bin/trash-can.png',
      type: WasteType.organic,
      initialPos: bin1Pos,
    );

    add(bin1);

    final bin2Pos = Vector2(size.x - 100, y);
    final bin2 = Bin(
      imagePath: 'bin/recycle-bin.png',
      type: WasteType.recyclables,
      initialPos: bin2Pos,
    );

    add(bin2);
  }
}
