import 'package:flutter/material.dart';
import 'package:find_the_dog/colors.dart';
import 'package:find_the_dog/rive_button.dart';

class FindTheDogScreen extends StatefulWidget {
  const FindTheDogScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FindTheDogScreen> createState() => _FindTheDogScreen();
}

class _FindTheDogScreen extends State<FindTheDogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: GameColors.primary1,
      ),
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: const RiveButton());
      }),
    );
  }
}
