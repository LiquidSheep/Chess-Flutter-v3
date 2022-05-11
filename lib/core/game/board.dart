import 'package:liquidsheep/core/game/pieces/empty.dart';
import 'package:liquidsheep/core/game/pieces/piece.dart';
import 'package:liquidsheep/core/game/pieces/square.dart';

class Board {
  List<List<Square>> state;

  Board() : state = List.generate(8, (x) => List.generate(8, (y) => Square(x: x, y: y, piece: const Empty())));

  Piece getPiece(int x, int y) => state[x][y].piece;
  setPiece(int x, int y, Piece piece) => state[x][y].piece = piece;

  @override
  String toString() {
    String stateString = "";

    for (int y = 7; y >= 0; y--) {
      for (int x = 0; x < 8; x++) {
        stateString += getPiece(x, y).toString();
      }
      stateString += "\n";
    }

    return stateString;
  }
}
