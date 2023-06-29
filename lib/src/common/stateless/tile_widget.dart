import 'package:chess/constants.dart';
import 'package:chess/src/common/stateless/piece_widget.dart';
import 'package:chess/utils.dart';
import 'package:flutter/cupertino.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key, this.color, this.size, required this.typePiece});

  final Color? color;
  final double? size;
  final String typePiece;

  @override
  Widget build(BuildContext context) {
    List<dynamic> piece = getTypePiece(typePiece);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color
      ),
      child: piece[0] as ChessPiece != ChessPiece.empty ? Piece(side: piece[1] as Side, type: piece[0] as ChessPiece,) : null,
    );
  }
}