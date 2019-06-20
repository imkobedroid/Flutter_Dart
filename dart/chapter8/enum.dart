/**
 * 枚举
 *
 * 1.枚举的下标从0开始  不能给方法  不能指定下标值
 */
void main() {
  var currentSeason = Season.spring;


  print(currentSeason.index);

  switch (currentSeason) {
    case Season.spring:
      print("1-3月");
      break;
    case Season.summer:
      print("4-7月");
      break;
    case Season.autumn:
      print("7-9月");
      break;
    case Season.winter:
      print("10-12月");
      break;
  }
}

enum Season { spring, summer, autumn, winter }
