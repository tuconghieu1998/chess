import 'package:chess/constants.dart';

List<dynamic> getTypePiece(String type) {
  ChessPiece piece;
  Side side;
  switch(type) {
    case "k":
      piece = ChessPiece.king;
      side = Side.black;
      break;
    case "q":
      piece = ChessPiece.queen;
      side = Side.black;
      break;
    case "b":
      piece = ChessPiece.bishop;
      side = Side.black;
      break;
    case "n":
      piece = ChessPiece.knight;
      side = Side.black;
      break;
    case "p":
      piece = ChessPiece.pawn;
      side = Side.black;
      break;
    case "r":
      piece = ChessPiece.rook;
      side = Side.black;
      break;
    case "K":
      piece = ChessPiece.king;
      side = Side.white;
      break;
    case "Q":
      piece = ChessPiece.queen;
      side = Side.white;
      break;
    case "B":
      piece = ChessPiece.bishop;
      side = Side.white;
      break;
    case "N":
      piece = ChessPiece.knight;
      side = Side.white;
      break;
    case "P":
      piece = ChessPiece.pawn;
      side = Side.white;
      break;
    case "R":
      piece = ChessPiece.rook;
      side = Side.white;
      break;
    default:
      piece = ChessPiece.empty;
      side = Side.black;
  }
  return [piece, side];
}