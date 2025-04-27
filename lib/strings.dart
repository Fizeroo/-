
String lastTwoTwice(String str) {
  if (str.length < 2) {
    return '';
  }
  String lastTwo = str.substring(str.length - 2);
  return lastTwo + lastTwo;
}


String firstTwoOrAll(String str) {
  if (str.length < 2) {
    return str;
  }
  return str.substring(0, 2);
}


String firstHalf(String str) {
  if (str.length % 2 != 0) {
    return '';
  }
  int halfLength = str.length ~/ 2;
  return str.substring(0, halfLength);
}


String removeFirstLast(String str) {
  if (str.length < 2) {
    return '';
  }
  return str.substring(1, str.length - 1);
}


String shortLongShort(String a, String b) {
  if (a.length <= b.length) {
    return a + b + a;
  } else {
    return b + a + b;
  }
}

String moveFirstTwoToEnd(String str) {
  if (str.length < 2) {
    return '';
  }
  String firstTwo = str.substring(0, 2);
  String rest = str.substring(2);
  return rest + firstTwo;
}