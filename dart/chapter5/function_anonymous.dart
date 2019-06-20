/**
 * 匿名方法
 */
void main() {
  Function func = () {
    print("hello");
  };

  func();

  Function func1 = (str) {
    print("hello----$str");
  };

  func1(30);

  //另外一种写法
  (() {
    print("test");
  })();

  //作为参数传递
  var list1 = ["a", "b", "c"];
  print(listTimes(list1, (str) {
    return str * 3;
  }));

  print(listTimes1(list1));
}




//自定义方法
List listTimes(List list, String t(s)) {
  for (int index = 0; index < list.length; index++) {
    list[index] = t(list[index]);
  }
  return list;
}



//自定义方法
List listTimes1(List list) {
  Function func = (str) {
    return str * 3;
  };

  for (int index = 0; index < list.length; index++) {
    list[index] = func(list[index]);
  }
  return list;
}
