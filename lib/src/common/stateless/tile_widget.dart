
import 'package:chess/asset_utils.dart';
import 'package:chess/color_constants.dart';
import 'package:chess/constants.dart';
import 'package:chess/image_utils.dart';
import 'package:chess/src/common/stateless/piece_widget.dart';
import 'package:chess/utils.dart';
import 'package:flutter/cupertino.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key, this.color, this.size, required this.typePiece, this.onTap, this.isSuggest});

  final Color? color;
  final double? size;
  final String typePiece;
  final Function()? onTap;
  final bool? isSuggest;

  @override
  Widget build(BuildContext context) {
    List<dynamic> piece = getTypePiece(typePiece);
    return GestureDetector(
      onTap: onTap,
      child: 
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: color
          ),
          child: Stack(
            children: [
              if (piece[0] as ChessPiece != ChessPiece.empty) Piece(side: piece[1] as Side, type: piece[0] as ChessPiece,),
              Text("$isSuggest"),
              if (isSuggest == true) Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColor.activeColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              )
            ],
          ) ,
      ),
    );
  }
}