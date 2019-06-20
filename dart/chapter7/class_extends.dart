import 'Person.dart';

void main() {
  var student = new Student();
  student.study();
  student.name = "kobe";
  student.age = 18;
  print(student.isAdult);
  student.run();



  //多态
  Person person=new Student();
  if(person is Student){
    person.study();
  }



//父类中重写 toString方法 toString方法是object的方法
  print(person);
}

class Student extends Person {
  void study() {
    print("student study....");
  }

  @override
  bool get isAdult => age > 15;

  @override
  void run() {
    super.run();
    print("我是extends");
  }
}
