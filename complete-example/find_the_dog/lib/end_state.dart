import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:find_the_dog/enums.dart';

class EndState extends StatelessWidget {
  const EndState({Key? key, required this.gameState}) : super(key: key);

  final GameStatus gameState;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace this with new win/loss state when ready
    return RiveAnimation.asset('findthedog_v3.riv');
  }
}
