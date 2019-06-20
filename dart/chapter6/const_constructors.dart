/**
 * 常量构造方法
 * 1.如果类是不可变的，可以把对象定义为编译时的常量
 * 2.使用const申明构造方法 并且所有的常量都是final
 * 3.使用const申明对象  可以省略
 */
void main() {
  const person1 = const Person("kobe", "10", "男");
  const person2 =  Person("kobe", "10", "男");
  person1.work();
  person2.work();
}

class Person {
  final String name;
  final String age;
  final String gender;

  const Person(this.name, this.age, this.gender);

  work() => print("name is $name    age is $age   gener is $gender");
}
