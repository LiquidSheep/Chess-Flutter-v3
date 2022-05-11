import 'package:liquidsheep/core/game/board.dart';
import 'package:liquidsheep/core/game/move.dart';

abstract class Piece {
  bool isWhite;
  bool isKilled;

  Piece({required this.isWhite, this.isKilled = false});

  bool canMove(Board board, Move move);
}
