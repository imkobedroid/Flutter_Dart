/**
 * 工厂构造方法  构造方法可以返回一个对象
 */


void main() {
  var person = new Person("key");
  person.log("我是一个字符串");
}


class Person {
  final String name;
  static final Map<String, Person> _cache = <String, Person>{};

  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final person = Person._internal("kobe");
      _cache[name] = person;
      return person;
    }
  }

  Person._internal(this.name);

  log(str) {
    print("str is $str  name is $name");
  }
} 
