/**
 * 抽象类
 * 1.抽象类用abstract进行表示 不能直接被实例化
 * 2.抽象方法不用abstract修饰  无实现
 * 3.抽象类可以没有抽象方法
 * 4.有抽象方法的类一定是抽象类
 */
void main() {
  var student = new Student();
  student.run();
  student.call();
  student.name="nba";
}

abstract class Person {

  String name;

  //抽象方法
  run();

  //非抽象方法
  call() {
    print("我是kobe");
  }
}

class Student extends Person {
  @override
  run() {
    print("我是抽象方法");
  }
}
