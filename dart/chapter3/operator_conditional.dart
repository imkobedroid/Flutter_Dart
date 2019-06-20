/**
 * 条件表达式
 */
void main() {
  int a = 0;
  String b = a == 0 ? "ok==$a" : "no==$a";
  print(b);

  //如果c没得值就用d的值，如果有值就用本身
  String c;
  String d = "java";
  String e = "kotlin";
  String f;
  print(c ?? d);
  print(e ?? d);
  print(c ?? f);
}
