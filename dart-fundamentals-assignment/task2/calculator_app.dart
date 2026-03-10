// Task 2 - Async Calculator
// Name: Messay Damtew

import 'dart:async';

class Calculator {

  String name;

  Calculator(this.name);

  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {

    if (b == 0) {
      throw ArgumentError("Cannot divide by zero");
    }

    return a / b;
  }

  Future<double> computeAsync(double a, double b, String op) async {

    double value;

    switch (op) {

      case "add":
        value = add(a, b);
        break;

      case "subtract":
        value = subtract(a, b);
        break;

      case "multiply":
        value = multiply(a, b);
        break;

      case "divide":
        value = divide(a, b);
        break;

      default:
        throw ArgumentError("Operation not found");
    }

    await Future.delayed(Duration(milliseconds: 1500));

    return value;
  }

  Future<void> printResult(double a, double b, String op) async {

    try {

      double result = await computeAsync(a, b, op);

      print("$op($a,$b) = $result");

    } catch (e) {

      print("Error happened: $e");

    }
  }
}

Future<void> main() async {

  Calculator myCalc = Calculator("SimpleCalc");

  print("Calculator Started");
  print("------------------");

  await myCalc.printResult(10, 4, "add");
  await myCalc.printResult(10, 4, "subtract");
  await myCalc.printResult(10, 4, "multiply");
  await myCalc.printResult(10, 4, "divide");
  await myCalc.printResult(15, 3, "divide");

  // testing error
  await myCalc.printResult(5, 0, "divide");

  print("Program finished");
}