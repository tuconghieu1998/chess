import 'package:chess/constants.dart';
import 'package:flutter/cupertino.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key, this.color, this.size});

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color
      ),
    );
  }
}