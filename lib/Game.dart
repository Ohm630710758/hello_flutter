
import 'dart:math';

enum GuessResult { correct, tooHigh, tooLow }

class Game {
  final int answer = Random().nextInt(100) + 1;

  game() {}

  int _totalGuesses = 0;

  GuessResult doGuess(int guess) {
    _totalGuesses++;

    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }


  int get totalGuesses {
    return _totalGuesses;
  }
}
