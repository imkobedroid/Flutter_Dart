/**
 * 方法对象   把方法赋值给一个对象
 */
void main() {
  var func1 = printHello;
  func1();

  Function func2 = printHello;
  func2();

  var list = [1, 2, 3, 4, 5, 6];
  list.forEach(print);

  var list1 = ["a", "b", "c"];
  print(listTimes(list1, times));
}

printHello() {
  print("hello");
}

//自定义方法
List listTimes(List list, String t(s)) {
  for (int index = 0; index < list.length; index++) {
    list[index] = t(list[index]);
  }
  return list;
}

String times(Str) => Str * 3;

//也可以这样写
//List listTimes(List list,  t(s)) {
//  for (int index = 0; index < list.length; index++) {
//    list[index] = t(list[index]);
//  }
//  return list;
//}
//times(Str) => Str * 3
