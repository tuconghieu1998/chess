import 'package:chess/asset_utils.dart';
import 'package:chess/constants.dart';
import 'package:chess/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Piece extends StatelessWidget {
  const Piece({super.key, this.type, this.side});

  final ChessPiece? type;

  final Side? side;


  String? getAssetByType() {
    print("getAssetByType $side $type");
    return mapAssetPiece[side]![type];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ImageUtils.loadFromAsset(getAssetByType() ?? "")
    );
  }
}