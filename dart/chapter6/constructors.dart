/**
 * 构造方法
 */
void main() {
//  var person = new Person();
//  person.name = "kobe";
//  person.age = "10";
//
//  person.work();

  var person1 = new Person("kobe", "10", "男");
  person1.work();

  var person2 = new Person.withName("kobe", "男");
  person2.work();
}

class Person {
  String name;
  String age;
  final String gender;

  //默认的构造方法
//  Person(){
//
//  }

  //有自定义的构造方法后 默认构造函数自动失效
//  Person(name, age) {
//    this.name = name;
//    this.age = age;
//  }

  //自定义构造方法的语法糖可以这样写  并且这样的方法可以对final的属性进行设置 例如下边设置gender
  Person(this.name, this.age, this.gender);

  //因为dart中方法不能被重载 ，所以在创建构造方法的时候一般是采用下边的方式进行构造不同参数的构造方法
  Person.withName(this.name, this.gender);

  work() => print("name is $name    age is $age   gener is $gender");
}
