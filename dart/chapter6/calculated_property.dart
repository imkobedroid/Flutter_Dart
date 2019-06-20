/**
 * 计算属性
 */
void main() {
  var rectangle = new Rectangle();
  rectangle.height = 10;
  rectangle.width = 20;
  var result = rectangle.area;
  print(result);

  rectangle.area=200;
  print(rectangle.width);

}

class Rectangle {
  num width, height;

//  num area() {
//    return width * height;
//  }

  num get area => width * height;

  set area(value) {
    width = value / 20;
  }
}
