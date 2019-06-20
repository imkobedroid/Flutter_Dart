/**
 * 子类构造方法：
 * 1.子类的构造方法会调用父类的无名无参的构造方法
 * 2.如果父类没有无名无参的构造方法 则需要显示的调用父类的构造方法
 * 3.在构造方法参数之后使用: 显示的调用父类的构造方法
 *
 *
 * 构造方法执行顺序:
 * 1.父类的构造方法在子类的构造方法体开始执行的位置调用
 * 2.如果有初始化列表   初始化列表会在父类的构造方法之前执行
 */

void main() {
  var student = new Student();
  print(student.age);

  print("-------");

  var b = new B("kobe", "未知");
}

class Person {
  //无名无参的构造方法
  Person() {
    print("我是父类的构造方法");
  }
}

class Student extends Person {
  int age = 10;
}

class A {
  String name;

  //无名有参
  A(this.name) {
    print("我是无名无参    $name");
  }

  //有名有参
  A.withName(this.name) {
    print("我是有名有参   $name");
  }
}

class B extends A {
  //gender是初始化列表
  final String gender;

  //二者只能选其一

  //可以这样显示调用父类的无名有参
  //B(String name) : super(name);

  //可以这样显示调用父类的有名有参数
  B(String name, String gender)
      : gender = gender,
        super.withName(name) {
    print("我是子类的构造方法  $gender");
  }
}
