import 'package:add_game/games/waste_sorting/waste_sorting_game.dart';
import 'package:flutter/material.dart';

class WinMenu extends StatefulWidget {
  const WinMenu(this.gameRef, {Key? key}) : super(key: key);

  static const id = 'WinMenu';

  final WasteSortingGame gameRef;
  @override
  State<WinMenu> createState() => _WinMenuState();
}

class _WinMenuState extends State<WinMenu> {
  void _backToHome() => Navigator.of(context).pop();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      alignment: Alignment.center,
      child: SizedBox(
        width: 300,
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Yeay, kamu berhasil",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                TextButton(
                  onPressed: _backToHome,
                  child: const Text("Kembali"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
