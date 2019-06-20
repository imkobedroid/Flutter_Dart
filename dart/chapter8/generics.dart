/**
 * 泛型
 */
void main() {
  var list = new List<String>();
  list.add("kobe");

  var utils = new Utils<String>();
  utils.putA("kobe");
  print(utils.element);
  utils.putC<int>(1);
}

class Utils<T> {
  T element;
  String elementStr;

  putA(T element) {
    this.element = element;
  }

  putB(String elementStr) {
    this.elementStr = elementStr;
  }

  //方法的泛型

  void putC<K>(K k) {
    print(k);
  }
}
