/**
 * break continue的使用
 *
 * break 终止当前循环，如果当前循环外部有另外的循环 不受此影响
 * continue 跳过当前本次循环 继续下一次循环  如果当前循环外部有另外的循环 不受此影响
 */
void main() {
  var list = [1, 2, 3];

  for (int item in list) {
    if (item == 2) {
      break;
    }
    print(item);
  }

  print("-----------");

  for (int item in list) {
    if (item == 2) {
      continue;
    }
    print(item);
  }

  var list1 = [4, 5, 6];

  print("-----------");

  for (int item in list) {
    for (int item1 in list1) {
      print(item1);
    }
  }

  print("-----------");

  for (int item in list) {
    print("外层--$item");
    for (int item1 in list1) {
      if (item == 3) {
        break;
      }
      print("内层--$item1");
    }
  }

  print("-----------");

  for (int item in list) {
    print("外层--$item");
    for (int item1 in list1) {
      if (item == 2) {
        continue;
      }
      print("内层--$item1");
    }
  }

  print("-----------");

  for (int item in list) {
    if (item == 2) {
      break;
    }
    print("外层--$item");
    for (int item1 in list1) {
      print("内层--$item1");
    }
  }

  print("-----------");

  for (int item in list) {
    if (item == 2) {
      continue;
    }
    print("外层--$item");
    for (int item1 in list1) {
      print("内层--$item1");
    }
  }
}
