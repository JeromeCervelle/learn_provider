import 'package:flutter/material.dart';
import 'package:learn_provider/model/count_type.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

class CountButton extends StatelessWidget {
  CountType type;

  CountButton({required this.type});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: (() => handleAction(context)),
      heroTag: type,
      child: type.getIcon(),
    );
  }

  handleAction(BuildContext context) {
    switch (type) {
      case CountType.increment: context.read<CountProvider>().incrementCounter();
        break;
      case CountType.decrement: context.read<CountProvider>().decrementCounter();
        break;
      case CountType.reset: context.read<CountProvider>().resetCounter();
    }
  }
}