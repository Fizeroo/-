
bool containsTwice(List<int> nums, int n) {
  int count = 0;
  for (int num in nums) {
    if (num == n) {
      count++;
    }
  }
  return count >= 2;
}

bool bothStartWithZero(List<int> a, List<int> b) {
  if (a.isEmpty || b.isEmpty) {
    return false;
  }
  return a[0] == 0 && b[0] == 0;
}


List<int> largestSumArray(List<int> a, List<int> b) {
  int sumA = a[0] + a[1];
  int sumB = b[0] + b[1];

  if (sumA >= sumB) {
    return a;
  } else {
    return b;
  }
}


List<int> middleTwo(List<int> nums) {
  int middle = nums.length ~/ 2;
  return [nums[middle - 1], nums[middle]];
}


List<int> combineArrays(List<int> a, List<int> b) {
  return [a[0], a[1], b[0], b[1]];
}


List<int> swapFirstLast(List<int> nums) {
  if (nums.length == 1) {
    return nums;
  }

  int first = nums[0];
  int last = nums[nums.length - 1];

  nums[0] = last;
  nums[nums.length - 1] = first;

  return nums;
}


List<int> middleThree(List<int> nums) {
  int middle = nums.length ~/ 2;
  return [nums[middle - 1], nums[middle], nums[middle + 1]];
}


int largestOfThree(List<int> nums) {
  int first = nums[0];
  int last = nums[nums.length - 1];
  int middle = nums[nums.length ~/ 2];

  int largest = first;
  if (last > largest) {
    largest = last;
  }
  if (middle > largest) {
    largest = middle;
  }

  return largest;
}

List<int> firstTwo(List<int> nums) {
  if (nums.length >= 2) {
    return [nums[0], nums[1]];
  } else {
    return [nums[0]];
  }
}