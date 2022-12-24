void main (){
  var p = Person('puttarapol','tungbunjongkit',20);
  var p2 = Person('xxxxx','xxxxx',23);
}
class Person {  //คลาส
  final String FN;
  final String LN;
  final int AGE;
  Person(this.FN,this.LN,this.AGE){ //พารามิตเตอร์
print('$FN,$LN,$AGE');
  }
}