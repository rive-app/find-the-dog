import 'package:flutter/material.dart';
import 'package:find_the_dog/colors.dart';
import 'package:find_the_dog/enums.dart';
import 'package:find_the_dog/rive_button.dart';

class FindTheDogScreen extends StatefulWidget {
  const FindTheDogScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FindTheDogScreen> createState() => _FindTheDogScreen();
}

class _FindTheDogScreen extends State<FindTheDogScreen> {
  GameStatus gameState = GameStatus.inProgress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: GameColors.primary1,
      ),
      body: SizedBox.expand(
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: gameState == GameStatus.inProgress
                  ? GameColors.background
                  : GameColors.backgroundEndState),
          child: const RiveButton(),
        ),
      ),
    );
  }
}
