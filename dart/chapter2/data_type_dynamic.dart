/**
 * dynamic 动态类型
 */
void main(){

  var a;
  a="hello";
  a=1;
  print(a);


  dynamic b=20;
  b="hello";
  print(b);


  var list=new List<dynamic>();
  list.add("hello");
  list.add(1);
  list.add(true);
  print(list);



}