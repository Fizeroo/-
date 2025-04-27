import 'dart:io';

// 1. Вывод квадратов чисел от 10 до 20
void printSquares() {
  for (int i = 10; i <= 20; i++) {
    print("$i squared is ${i * i}");
  }
}

// 2. Сумма чисел от 1 до *n*
void sumUpToN() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }

  print("The sum of numbers from 1 to $n is $sum");
}

// 3. Расчет суммы вклада через *N* лет
void calculateDeposit() {
  print("Enter the initial deposit amount (S):");
  double S = double.parse(stdin.readLineSync()!);

  print("Enter the number of years (N):");
  int N = int.parse(stdin.readLineSync()!);

  double deposit = S;
  for (int year = 1; year <= N; year++) {
    deposit += deposit * 0.03; // 3% interest rate
  }

  print("The deposit after $N years will be \$${deposit.toStringAsFixed(2)}");
}

// 4. Числа от 20 до 50, делящиеся на 3, но не на 5
void printDivisibleBy3Not5() {
  for (int i = 20; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      print(i);
    }
  }
}

// 5. Сумма чисел от 1 до 50, делящихся на 5 или 7
void sumDivisibleBy5Or7() {
  int sum = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      sum += i;
    }
  }

  print("The sum of numbers divisible by 5 or 7 is $sum");
}

// 6. Двузначные числа, делящиеся на 4, но не на 6
void printTwoDigitNumbersDivisibleBy4Not6() {
  for (int i = 10; i <= 99; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      print(i);
    }
  }
}

// 7. Сумма чисел от 100 до 200, кратных 17
void sumMultiplesOf17() {
  int sum = 0;
  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      sum += i;
    }
  }

  print("The sum of numbers divisible by 17 is $sum");
}

// 8. Сумма квадратов чисел от 1 до *N*
void sumOfSquares() {
  print("Enter a number:");
  int N = int.parse(stdin.readLineSync()!);

  int sum = 0;
  for (int i = 1; i <= N; i++) {
    sum += i * i;
  }

  print("The sum of squares from 1 to $N is $sum");
}