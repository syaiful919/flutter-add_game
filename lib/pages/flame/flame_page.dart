import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'package:add_game/games/waste_sorting/menus/main_menu.dart';
import 'package:add_game/games/waste_sorting/menus/win_menu.dart';
import 'package:add_game/games/waste_sorting/waste_sorting_game.dart';

class FlamePage extends StatefulWidget {
  const FlamePage({Key? key}) : super(key: key);

  @override
  State<FlamePage> createState() => _FlamePageState();
}

class _FlamePageState extends State<FlamePage> {
  final game = WasteSortingGame();

  @override
  void initState() {
    super.initState();
    Flame.device.fullScreen();
  }

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: game,
      loadingBuilder: (_) => const Center(child: CircularProgressIndicator()),
      errorBuilder: (_, __) => const Center(child: Text("something error")),
      overlayBuilderMap: {
        MainMenu.id: (_, WasteSortingGame gameRef) => MainMenu(gameRef),
        WinMenu.id: (_, WasteSortingGame gameRef) => WinMenu(gameRef),
      },
      initialActiveOverlays: const [MainMenu.id],
    );
  }
}
