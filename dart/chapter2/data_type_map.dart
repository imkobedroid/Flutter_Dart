/**
 * map的使用
 */
void main() {
//可变的map
  var map1 = {"first": "dart", 1: 2, 2: true};
  print(map1);

  print(map1["first"]);
  print(map1[2]);

  //修改
  map1[1] = 3;
  print(map1);

  //不可变的map
  var map2 = const {"1": "dart", "2": "java"};
  print(map2);

  //map对象
  var map3 = new Map();

  //map操作
  var map = {"first": "dart", "second": "java", "third": "python"};
  print(map.length);
  map.isEmpty;
  print(map.keys);
  print(map.values);

  print(map.containsKey("first"));
  print(map.containsValue("java"));

  map.remove("third");
  print(map);

  map.forEach(f);

  //用下标作为了key
  var list = [1, 2, 3];
  print(list.asMap());
}

void f(key, value) {
  print("key=$key   value=$value");
}
