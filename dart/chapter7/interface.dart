/**
 * 接口
 * 1.类和接口是统一的  类就是接口
 * 2.每个类都隐式的定义了一个包含了所有实例成员的接口
 * 3.如果复用已有的类使用extends
 * 4.如果只是使用已有类的外在行为 使用implements
 * 5.所有的类都可以用来做接口使用  包括抽象类 一般的类 等等
 */
void main() {
  var student = new Student();
  student.run();
  print(student.age);
  student.call();
}

class Person {
  String name;

  int get age => 15;

  run() {
    print("我是父类的run方法");
  }
}

abstract class A {
  void call();
}

class Student implements Person, A {
  @override
  String name;

  @override
  int get age => 14;

  @override
  run() {
    print("我是接口的run方法");
  }

  @override
  void call() {
    print("我是A抽象类的方法");
  }
}
