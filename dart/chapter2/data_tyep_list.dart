/**
 * list的数据
 */

void main() {
//  //可变的list
//  var list1 = [1, 2, 3, "dart", true];
//  print(list1);
//  print(list1[2]);
//  list1[2] = "hello";
//  print(list1);
//
//  //不可变的list
//  var list2 = const [1, 2, 3];
//  print(list2);
//
//
//  //对象list
//  var list3=new List();
//  print(list3);




//list的操作
var list=["hello","dart"];
print(list.length);


list.add("new ");
print(list);


list.insert(1, "java");
print(list);


list.remove("java");
print(list);

//
//list.clear();
//print(list);



print(list.indexOf("dart"));
print(list.indexOf("dart1"));

//排序  按Ascall码
list.sort();
print(list);


//截取
print(list.sublist(1));


//foreach
list.forEach(print);



}
