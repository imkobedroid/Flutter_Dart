void main() {
  String str = "java";
  switch (str) {
    case "java":
      print("java is ok");
      break;
    case "python":
      print("python is ok");
      break;
    case "c":
      print("c is ok");
      break;
    default:
      print("i dont like it");
  }

  /**
   * 下面代码 text是标签的意思， 下面代码运行完
   *  case "c":   print("c is ok");
   *  后会通过continue text 跳转到标签处继续运行一下case的方法
   */

  String str1 = "c";

  switch (str1) {
    case "java":
      print("java is ok");
      break;
    text:
    case "python":
      print("python is ok");
      break;
    case "c":
      print("c is ok");
      continue text;
    default:
      print("i dont like it");
  }
}
