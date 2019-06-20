/**
 * 给main函数 添加参数
 * cd /Users/toushihiroshi/Desktop/Dart/dart/chapter5
 * dart function_declaration.dart  1 "test" true
 * [1, test, true]
 */
void main(List args) {
  // print(args);
  // print(getPerson("kobe", "40");
  // print(getPerson1("kobe", "40"));
  // print(getPerson2("kobe", "40"));
  // print(getPerson3("kobe", "40"));
  // print(getPerson4("kobe", "40"));
  print(getPerson5("kobe", "40"));
}

//一般方法
String getPerson(String name, String age) {
  return "name==$name   age==$age";
}

//可以省略返回值
getPerson1(String name, String age) {
  return "name==$name   age==$age";
}

//可以省略参数类型
getPerson2(name, age) {
  return "name==$name   age==$age";
}

//箭头语法
getPerson3(name, age) => "name==$name   age==$age";

//结合运算
var index = 2;

getPerson4(name, age) => index == 1 ? "name==$name   age==$age" : "test";

//没有具体的返回类型时候 返回的是一个null
getPerson5(name, age) => print("name==$name   age==$age");
