/**
 * 操作符的复写
 */
void main() {
  var person1 = new Person(18);
  var person2 = new Person(20);
  print(person1 > person2);

  print(person1["age"]);
  print(person1["kobe"]);

  print(person1 == person2);
  var person3 = new Person(20);
  print(person3 == person2);
}

class Person {
  int age;

  Person(this.age);

  //操作符
  bool operator >(Person person) {
    return this.age > person.age;
  }

  String operator [](String str) {
    if ("age" == str) {
      return str;
    }
    return null;
  }

  //用快捷键自动生成等号
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && age == other.age;

  @override
  int get hashCode => age.hashCode;
}
