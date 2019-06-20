/**
 * 闭包的使用   闭包就是定义在其他方法中的一个方法（说法不一定对）  可以通过这个方法访问当前所在方法里面的变量的方式
 */
void main() {
  Function func = a();
  func();
  func();
  func();
  func();
  func();

  print("------------");

  Function func1 = b();
  func1();
  func1();
  func1();
  func1();
  func1();
}

//闭包的一般写法
a() {
  int count = 0;
  printCount() {
    print(count++);
  }
  return printCount;
}



//闭包的匿名写法
b() {
  int count = 0;
  return () {
    print(count++);
  };
}
