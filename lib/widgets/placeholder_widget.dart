import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({super.key, required this.height, this.color = Colors.white});
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        return Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          color: color,
          child: const Text(
            'Placeholder',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        );
      },
    );
  }
}
