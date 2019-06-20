/**
 * while语句的使用
 */
void main() {
  int a = 0;
  while (a < 5) {
    print(a++);
  }

  print("----$a------");

  do {
    print(a--);
  } while (a > 0 && a < 5);
}
