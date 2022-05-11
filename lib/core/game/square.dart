import 'package:liquidsheep/core/game/pieces/piece.dart';

class Square {
  int x;
  int y;
  Piece piece;

  Square({required this.x, required this.y, required this.piece});

  @override
  String toString() {
    return piece.toString() + ":($x, $y)";
  }
}
