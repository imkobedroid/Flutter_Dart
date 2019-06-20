/**
 * 赋值运算符
 */
void main() {
  int a = 10;
  int b;
  //如果b没有值 则把a赋值给b  如果有值就不赋值
  b ??= a;
  print(b);

  int c = 5;
  c ??= a;
  print(c);

  print(a += c);
  print(a -= c);
  print(a *= c);
  // print(a /= c);
  print(a ~/= c);
  print(a %= c);
}
