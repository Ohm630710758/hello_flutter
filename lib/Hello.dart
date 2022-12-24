import 'dart:math';

void main(){

  int a = 123;
  String b = 'abc';

  var c = 123;
  var d = 'สวัสดี';

  var f = d+c.toString();
  var g = 'hello $c';
  //เปลี่ยนintเป็นStringใช้ได้แค่กับการเปลี่ยนเป็นString

  print(f);
  print(g);
  //var จะเป็นการเลือกไทป์ให้
  Random r = Random();
  var R = Random();
  //เหมือนกัน
  List e = [1,2,3];
  //Listเหมือนอาเรย์

  dynamic h;
  h = 123;
  h = 'hello';
  h = Random();
  h = false;
  h = 1.23456;

  //dynamic เก็บได้ทุกไทป์
}
//?หมายถึงnull int?=สามารถเป็นได้ทั้งint || null
//สุ่มเลข
//ตั้งแต่1-99 ไม่เอาตัวเลขตัวสุดท้ายคือ100
//ขึ้นบรรทัดให้ใหม่ด้วย
//stdout.write('001'); //ไม่ขึ้นบรรทัดใหม่
//จุดเริ่มต้นลูปdo
//รับค่าและส่งค่ากลับมา
//return=จบการทำงาน
//เครื่องหมาย!เป็นการยืนยันว่าจะไม่null
//guess = int.tryParse(input); เปลี่ยนตัวเลขในสตริงมาเป็นint
//{ถ้าจะบวกตอนปริ้นให้พิมเช่น (' อย่างนี้ ${a+b} ')}
//while (guess != answer);
//final กำหนดค่าตัวแปล
// เงื่อนไขลูป