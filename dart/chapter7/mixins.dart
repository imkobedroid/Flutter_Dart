/**
 * mixin
 * 1.实现多继承
 * 2.作为mixin的类不能有显示的构造方法
 * 3.作为mixin的类只能继承自object
 * 4.使用with关键字连接一个或多个mixin类
 */
void main() {
  var d = new D();
  d.a();
  d.b();
  d.c();
  //因为with后最后一个是c 所以调用的是c中的方法
  d.run();


  var car=new Car();
  car.work();
  car.run();


  var bus =new Bus();
  bus.work();
  bus.run();

}

class A {
  a() {
    print("我是A");
  }

  run() {
    print("A.a()...");
  }
}

class B {
  b() {
    print("我是B");
  }

  run() {
    print("B.b()...");
  }
}

class C {
  c() {
    print("我是C");
  }

  run() {
    print("C.c()...");
  }
}

class D extends A with B, C {}

abstract class Engine {
  work();
}

class OilEngine implements Engine {
  @override
  work() {
    print("work with Oil...");
  }
}

class ElectricEngine implements Engine {
  @override
  work() {
    print("work with Electric...");
  }
}

class Tyre {
  String name;

  run() {
    print("我是公共的方法");
  }
}



//通过这个方法构建一个类
class Car =Tyre with OilEngine;


class Bus =Tyre with  ElectricEngine;