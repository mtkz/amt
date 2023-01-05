import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final Color dotColor;
  const DotWidget({super.key, required this.dotColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: dotColor,
          border: Border.all(
            width: 2,
            color: Theme.of(context).colorScheme.onPrimary,
          )),
    );
  }
}
