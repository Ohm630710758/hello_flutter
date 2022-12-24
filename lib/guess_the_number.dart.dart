import 'dart:io';
import 'Game.dart';

void main() {
  var B = false;
  var I = 1;
  var My = 0;
  List<int> myList = [];
  do {
    var game = Game();
    late GuessResult guessResult;
    print('มาเริ่มทายเลขกันเลยยยยยย');
    do {
      print('เอาเลข1-100นะค้าบบบบบ');
      var input = stdin.readLineSync();
      if (input == null) {
        print('Errorนะรู้ไหมทำไมไม่พิม');
        continue;
      }
      var guess = int.tryParse(input);

      if (guess == null) {
        print('ใส่แค่ตัวเลขนะะะะ');
        continue;
      }

      guessResult = game.doGuess(guess);
      if (guessResult == GuessResult.correct) {
        print(
            '$guess คือคำตอบงับบบบบ เล่นไปทั้งหมด ${game.totalGuesses} ครั้ง');
        myList.add(game.totalGuesses);
      } else if (guessResult == GuessResult.tooHigh) {
        print('มันมากเกินไปง่าาาาาา');
      } else {
        print('มันน้อยเกินไปง่าาาาา');
      }
    } while (guessResult != GuessResult.correct);
    print('อยากเล่นต่อรึเปล่าาาา Y/N');
    var A = stdin.readLineSync();
    if (A == 'Y') {
      B = false;
      I++;
      continue;
    } else if (A == 'N') {
      B = true;
      print('เล่นไปทั้งหมด $I เกม');
      for (int i = 1; i <= I; i++) {
        stdout.write('เกมที่ $i ทำไปทั้งหมด ');
        stdout.write(myList[My]);
        print(' ครั้ง');
        My++;
      }
    }
  } while (!B);
}
