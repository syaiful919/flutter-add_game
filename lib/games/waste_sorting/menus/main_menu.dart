import 'package:add_game/games/waste_sorting/waste_sorting_game.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu(this.gameRef, {Key? key}) : super(key: key);

  static const id = 'MainMenu';

  final WasteSortingGame gameRef;

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  void _backToHome() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 100,
        child: Row(
          children: [
            BackButton(onPressed: _backToHome),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
                child: Center(
                  child: Image.asset("assets/images/logo/pilah_sampah.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.teal),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8),
        child: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.teal,
        ),
      ),
    );
  }
}
