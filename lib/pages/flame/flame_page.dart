import 'package:add_game/games/waste_sorting/waste_sorting_game.dart';
import 'package:flutter/material.dart';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';

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
    );
  }
}
