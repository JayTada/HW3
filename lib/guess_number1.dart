// ignore_for_file: avoid_print

import 'dart:io';


import 'game.dart';

void main() {
  const maxRandom = 100;
  var game = Game();

  var isCorrect = false;
  var ng = false;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');


  do {

    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }


    var result = game.doGuess(guess);


    var count1 = game.count;
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $count1');
      print('╟────────────────────────────────────────');
      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
      ng = false;
      do{
        stdout.write('Play again Y/N:');
        var reborn = stdin.readLineSync();
        if (reborn == "Y") {
          isCorrect = false;
          ng =true;
          print('╔════════════════════════════════════════');
          print('║            GUESS THE NUMBER            ');
          print('╟────────────────────────────────────────');
        } else if (reborn == "N") {
          exit(0);
        }
      }while(!ng);
    }

  } while (!isCorrect);


}