import 'package:liquidsheep/core/game/pieces/empty.dart';
import 'package:liquidsheep/core/game/pieces/piece.dart';
import 'package:liquidsheep/core/game/pieces/square.dart';
import 'package:liquidsheep/core/game/player.dart';

class Move {
  Player player;
  Square from;
  Square to;
  Piece pieceMoved;
  Piece pieceKilled;

  Move({required this.player, required this.from, required this.to})
      : pieceMoved = from.piece,
        pieceKilled = const Empty();
}
