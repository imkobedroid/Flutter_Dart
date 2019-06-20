/**
 * for的使用
 */
void main(){



  var list=[1,2,3,4,5];

  for(int index=0;index<list.length;index++){
    print(list[index]);
  }



  print("-----------------------");



  for(int item in list){
    print(item);
  }

}