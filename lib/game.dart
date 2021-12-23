import 'dart:math';

class Game {
  static const maxRandom = 100;
  int? _answer;
  int count=0;
  int sum=0;

  int guessCount = 0;

  Game() {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;


  }

  int doGuess(int num) {
    if (num > _answer!) {
      guessCount++;
      count=guessCount;
      return 1;
    } else if (num < _answer!) {
      guessCount++;
      count=guessCount;
      return -1;
    } else {
      guessCount++;
      count=guessCount;
      var r = Random();
      _answer = r.nextInt(maxRandom) + 1;
      guessCount =0;
      return 0;

    }

  }
}