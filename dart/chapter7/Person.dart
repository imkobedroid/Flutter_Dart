/**
 * 继承
 * 1.使用关键字extends继承一个类
 * 2.子类会继承父类的可见的属性和方法  不会继承构造方法
 * 3.子类能够复写父类的方法 gettter  setttr
 * 4.单继承 多态性
 */
class Person{

  String name;
  int age;
  String birthday;


  bool get isAdult =>age>18;

  void run(){
    print("Person runn....");
  }

  @override
  String toString() {
    // TODO: implement toString
    return "name is $name   age is $age";
  }
}