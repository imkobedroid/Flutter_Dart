/**
 * 对象call方法
 */
void main() {
  var person = new Person();
//  person.age="10";
//  person.name="kobe";
//  person();

//  print("------------------");
//
//  person("kobe", "30");

  print("------------------");

  print(person("kobe", "30"));
}

class Person {
  String name;
  String age;

//  work(){
//    print("name is $name  age is $age");
//  }

  //方法名字必须为call  不给参数
//  void call(){
//    print("name is $name  age is $age");
//  }

//  //方法名字必须为call  给参数
//  void call(String name, String age) {
//    print("name is $name  age is $age");
//  }

  //方法名字必须为call  给参数 有返回值
  String call(String name, String age) {
    return "name is $name  age is $age";
  }
}
