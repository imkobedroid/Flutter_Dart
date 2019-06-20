/**
 * 默认参数值
 */
void main() {
  printPerson("kobe");
  printPerson("kobe", age: 20);
  printPerson("kobe", gender: "男");
  printPerson("kobe", age: 20, gender: "男");
}

//可选参数  花括号 无顺序的参数
printPerson(String name, {int age = 100, String gender = "未知"}) {
  print("name==$name age==$age  gender=$gender");
}
