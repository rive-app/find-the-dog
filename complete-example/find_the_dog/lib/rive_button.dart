import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveButton extends StatefulWidget {
  const RiveButton(
      {Key? key, required this.isReal, required this.stateChangeCb})
      : super(key: key);

  final bool isReal;
  final void Function(String stateMachineName, String stateName) stateChangeCb;

  @override
  State<RiveButton> createState() => _RiveButtonState();
}

class _RiveButtonState extends State<RiveButton> {
  void _onRiveInit(Artboard board) {
    var smController = StateMachineController.fromArtboard(
      board,
      "ButtonMachine",
      onStateChange: widget.stateChangeCb,
    ) as StateMachineController;
    board.addController(smController);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: GestureDetector(
        child: RiveAnimation.asset(
          'assets/findthedog.riv',
          artboard: widget.isReal ? "Dog" : "Shiba",
          stateMachines: const ["ButtonMachine"],
          onInit: _onRiveInit,
        ),
      ),
    );
  }
}
