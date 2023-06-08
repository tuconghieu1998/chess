import 'package:chess/constants.dart';

class AssetUtils {
  static const String imgBishopBlack = "assets/images/bishop_black.png";
  static const String imgBishopWhite = "assets/images/bishop_white.png";
  static const String imgKingBlack = "assets/images/king_black.png";
  static const String imgKingWhite = "assets/images/king_white.png";
  static const String imgKnightBlack = "assets/images/knight_black.png";
  static const String imgKnightWhite = "assets/images/knight_white.png";
  static const String imgPawnBlack = "assets/images/pawn_black.png";
  static const String imgPawnWhite = "assets/images/pawn_white.png";
  static const String imgQueenBlack = "assets/images/queen_black.png";
  static const String imgQueenWhite = "assets/images/queen_white.png";
  static const String imgRookBlack = "assets/images/rook_black.png";
  static const String imgRookWhite = "assets/images/rook_white.png";
}

Map<Side, Map<ChessPiece, String>> mapAssetPiece = {
  Side.white: {
    ChessPiece.bishop: AssetUtils.imgBishopWhite,
    ChessPiece.king: AssetUtils.imgKingWhite,
    ChessPiece.knight: AssetUtils.imgKnightWhite,
    ChessPiece.pawn: AssetUtils.imgPawnWhite,
    ChessPiece.queen: AssetUtils.imgQueenWhite,
    ChessPiece.rook: AssetUtils.imgRookWhite
  },
  Side.black: {
    ChessPiece.bishop: AssetUtils.imgBishopBlack,
    ChessPiece.king: AssetUtils.imgKingBlack,
    ChessPiece.knight: AssetUtils.imgKnightBlack,
    ChessPiece.pawn: AssetUtils.imgPawnBlack,
    ChessPiece.queen: AssetUtils.imgQueenBlack,
    ChessPiece.rook: AssetUtils.imgRookBlack
  },
};