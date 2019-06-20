/**
 * 静态成员
 * 1.使用static关键字来实现类级别的变量与函数
 * 2.静态成员不能访问非静态成员，非静态成员可以访问静态成员
 * 3.类中的常量需要使用static const声明
 */
void main() {
  var page = new Page();
  page.scrollUp();
  Page.scrollDown();
}

class Page {
  static int currentPage = 1;
  //类中的常量需要static const来申明
  static const int maxPage = 2;

  static scrollDown() {
    currentPage = 1;
    print("scrollDown....");
  }

  scrollUp() {
    currentPage++;
    print("scrollUp....");
  }
}
