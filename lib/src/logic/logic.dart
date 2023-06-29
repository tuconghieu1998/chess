import 'package:chess/src/logic/data_sample.dart';

class Point {
  int? x;
  int? y;
  Point(int _x, int _y) {
    print("Point $x, $y");
    x = _x;
    y = _y;
  }
}

class ChessLogic {
  static List<List<String>> initChessBoard() {
    return START_BOARD_CONFIG;
  }

  static List<Point> getListTypeCanMove(Point point) {
    return [Point(0, 3), Point(0, 4)];
  }
}