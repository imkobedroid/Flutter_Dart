/**
 * if语句的使用
 */
void main() {
  int a = 90;

  if (a >= 90) {
    if (a == 100) {
      print("完美");
    }
    print("优秀");
  } else if (a > 60) {
    print("良好");
  } else if (a == 60) {
    print("及格");
  } else {
    print("差");
  }
}