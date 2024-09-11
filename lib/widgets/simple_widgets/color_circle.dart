import 'package:flutter/material.dart';
import 'package:learn_provider/providers/color_provider.dart';
import 'package:provider/provider.dart';

class ColorCircle extends StatelessWidget {
  final MaterialColor color;
  ColorCircle({required this.color});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: (() => context.read<ColorProvider>().changeColor(color)),
      backgroundColor: color,
      heroTag: color,
    );
  }
}