/**
 * 初始化列表
 * 1.初始化列表在构造方法执行之前执行
 * 2.使用逗号分隔初始化表达式
 * 3.初始化列表常用于设置final变量的值
 */
void main() {
  var person = new Person("kobe", "10", "男");
  person.work();
}

class Person {
  String name;
  String age;
  final String gender;

  Person(this.name, this.age, this.gender);

  //对final属性进行赋值
  Person.withMap(Map map) : gender = map["gender"] {
    this.name = map["name"];
    this.age = map["age"];
  }

  //也可以对不是final的属性进行赋值
  Person.withMap1(Map map)
      : name = map["name"],
        gender = map["gender"] {
    this.age = map["age"];
  }

  work() {
    print("name is $name  age is $age  gender is $gender");
  }
}
