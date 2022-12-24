import 'dart:io';
import 'dart:math';

void main() {
  int? guess;
  int i = 1;
  var R = Random();
  var answer = R.nextInt(100) + 1;
  print('พิมมาเลยจ้า 1-100');
  do {
    var input = stdin.readLineSync();
    int.tryParse(input!);
    guess = int.tryParse(input);
    if (guess == null) {
      print('ใส่ตัวเลขใหม่น้าาาาา');
      continue;
    } else if (guess >= 100 || guess <= 0) {
      print('ใส่ 1 - 100 นะค้าบบบบ');
      continue;

    }
    if (guess == answer) {
      print('คำตอบคือ $answer เก่งมากไอต้าวน่ารักกกกก');
      print('ทายไป $i ครั้งนะค้าบคนเก่ง');
    } else if (guess > answer) {
      print('$guess มากเกินไปนะค้าบลองใหม่นะ');
    } else if (guess < answer) {
      print('$guess น้อยเกินไปนะค้าบลองใหม่นะ');
    }
    i++;
  } while (guess != answer);
}
