import 'package:flame/game.dart';
import 'package:add_game/games/waste_sorting/components/background.dart';

class WasteSortingGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    addBackground();
  }

  void addBackground() {
    add(Background());
  }
}
