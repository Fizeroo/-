
bool isInRange(int a, int b) {
  if (a >= 10 && a <= 30) {
    return true;
  }
  if (b >= 10 && b <= 30) {
    return true;
  }
  return false;
}

bool startsWithFixVariant(String str) {
  if (str.length < 3) {
    return false;
  }
  String secondChar = str[1];
  String thirdChar = str[2];
  if (secondChar == 'i' && thirdChar == 'x') {
    return true;
  }
  return false;
}

int findLargest(int a, int b, int c) {
  int largest = a;
  if (b > largest) {
    largest = b;
  }
  if (c > largest) {
    largest = c;
  }
  return largest;
}

bool inSameRange(int a, int b) {
  bool range1 = false;
  bool range2 = false;

  if (a >= 20 && a <= 30 && b >= 20 && b <= 30) {
    range1 = true;
  }

  if (a >= 30 && a <= 40 && b >= 30 && b <= 40) {
    range2 = true;
  }

  return range1 || range2;
}


bool inSameRange(int a, int b) {
  bool range1 = false;
  bool range2 = false;

  if (a >= 20 && a <= 30 && b >= 20 && b <= 30) {
    range1 = true;
  }

  if (a >= 30 && a <= 40 && b >= 30 && b <= 40) {
    range2 = true;
  }

  return range1 || range2;
}

// Write a program to test whether the last digit of the two given non-negative integer values are same or not.

bool sameLastDigit(int a, int b) {
  int lastDigitA = a.abs() % 10;
  int lastDigitB = b.abs() % 10;

  if (lastDigitA == lastDigitB) {
    return true;
  }

  return false;
}

// Write a program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.

String lastThreeUpper(String str) {
  if (str.length < 3) {
    return str.toLowerCase();
  }

  String firstPart = str.substring(0, str.length - 3);
  String lastPart = str.substring(str.length - 3);

  return firstPart + lastPart.toUpperCase();
}
// Write a program to check if the first instance of "a" in a given string is immediately followed by another "a".

bool hasDoubleA(String str) {
  for (int i = 0; i < str.length - 1; i++) {
    if (str[i] == 'a') {
      if (str[i + 1] == 'a') {
        return true;
      }
      break;
    }
  }
  return false;
}
