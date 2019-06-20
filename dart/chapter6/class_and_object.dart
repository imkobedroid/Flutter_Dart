//这里表示的就是一个library文件
import 'PersonTest.dart';

/**
 * 对象的申明
 * 1.new关键字是可以省略的
 * 2.方法不能被重载
 * 3.dart的可见性是以library为单位的
 * 4.一个dart文件就是一个library
 * 5.使用_表示私有库
 *
 */
void main() {
  var person = new _Person();
  person.name = "kobe";
  person.age = 20;
  person._genger = "男";

  person.work();

  //不加_ 表示这个dart文件可以被其他的文件进行引用
  var person1 = new PersonTest();
}

//加了_表示私有,表示这个类只能在当前的这个dart文件中进行使用，后面想在其他的文件中使用是不能进行使用的
class _Person {
  //属性会自动生成一个get set方法  被final修饰过的只能有get方法

  String name;
  int age;
  final String address = null;

  //同样的属性也可以用_这个表示私有性
  String _genger;

  void work() {
    print("name is $name  age is $age  gender is $_genger");
  }
}
