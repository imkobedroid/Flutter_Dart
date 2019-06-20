/**
 * 对象操作符
 */
void main() {
  var person = new Person();
  person.work();

  print("---------");

  //？操作符  与kotlin中的问号是一样的
  Person person1;
  person1?.work();

  print("---------");

  //as操作符 与kotlin中的as是一样的
  var person2;
  person2 = "fdsfds";
  person2 = new Person();
  (person2 as Person).work();

  print("---------");

  //is操作符 与kotlin中的is是一样的
  var person3;
  person3 = "fdsfds";
  person3 = new Person();
  if (person3 is Person) {
    person3.work();
  }
  person3 = "fdsfds";
  if (person3 is! Person) {
    print(person3);
  }

  print("---------");

  //..联级操作
  var person4 = new Person();
  person4
    ..name = "kobe"
    ..age = "10"
    ..work1();
}

class Person {
  String name;
  String age;

  work() {
    print("work......");
  }

  work1() {
    print("name is $name   age is $age ");
  }
}
