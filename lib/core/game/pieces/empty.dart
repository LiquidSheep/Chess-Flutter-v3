import 'package:liquidsheep/core/game/board.dart';
import 'package:liquidsheep/core/game/move.dart';
import 'package:liquidsheep/core/game/pieces/piece.dart';

class Empty implements Piece {
  @override
  final bool isWhite;
  @override
  final bool isKilled;

  const Empty({this.isWhite = false, this.isKilled = false});

  @override
  set isWhite(bool isWhite) => this.isWhite = isWhite;
  @override
  set isKilled(bool isKilled) => this.isKilled = isKilled;

  @override
  bool canMove(Board board, Move move) {
    return false;
  }

  @override
  String toString() {
    return " ";
  }
}
