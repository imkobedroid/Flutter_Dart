/**
 * 可选参数   可选参数必须在必填参数的后面
 */
void main() {
  printPerson("kobe");
  printPerson("kobe", age: 20);
  printPerson("kobe", gender: "男");
  printPerson("kobe", age: 20, gender: "男");

  printPerson1("kobe", 1);
  printPerson1("kobe", null, "男");
  printPerson1("kobe", 1, null);
  printPerson1("kobe", 1, "男");



}



//可选参数  花括号 无顺序的参数
printPerson(String name, {int age, String gender}) {
  print("name==$name age==$age  gender=$gender");
}

//也可以写成
//printPerson( name, { age,  gender}) {
//  print("name==$name age==$age  gender=$gender");
//}

//可选参数  中括号 有顺序的参数
printPerson1(String name, [int age, String gender]) {
  print("name==$name age==$age  gender=$gender");
}


