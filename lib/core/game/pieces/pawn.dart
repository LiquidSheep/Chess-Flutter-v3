import 'package:liquidsheep/core/game/board.dart';
import 'package:liquidsheep/core/game/move.dart';
import 'package:liquidsheep/core/game/pieces/piece.dart';
import 'package:liquidsheep/core/game/pieces/square.dart';

class Pawn implements Piece {
  @override
  bool isWhite;
  @override
  bool isKilled;

  Pawn({this.isWhite = false, this.isKilled = false});

  @override
  bool canMove(Board board, Move move) {
    Square from = move.from;
    Square to = move.to;
    int xMove = (to.x - from.x).abs();
    int yMove = (to.y - from.y).abs();
    int dir = isWhite ? 1 : -1;

    // one in front
    if (xMove == 0 && yMove == dir) {}

    return false;
  }

  @override
  String toString() {
    return isWhite ? "P" : "p";
  }
}
