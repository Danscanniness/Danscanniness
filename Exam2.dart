//Name: OKOYE DANIEL AMANDIANEZE
                                       // Exam_2

// 1.	Define a Dart function that takes two parameters (int a, int b) and returns their sum. 
//ANSWER
int addTwoNumbers(int a, int b) {
  return a + b;
}

void main() {
  int num1 = 5;
  int num2 = 7;

  int sum = addTwoNumbers(num1, num2);

  print("The sum of $num1 and $num2 is: $sum");
}


// 2.	Write a function that calculates the factorial of a given number.
int calculateFactorial (int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}

void main() {
  int number = 5; // Replace with the desired number for which you want to calculate the factorial
  int factorial = calculateFactorial(number);

  print("The factorial of $number is: $factorial");
}



//3.	Create a function that checks if a number is prime.

bool isPrime(int number) {
  if (number <= 1) {
    return false; // Numbers less than or equal to 1 are not prime
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false; // If the number is divisible by any number in the range [2, number/2], it is not prime
    }
  }

  return true; // If no divisors were found, the number is prime
}

void main() {
  int num = 13; // Replace with the desired number to check for primality
  bool isNumPrime = isPrime(num);

 if (isNumPrime) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }
}

//4.	Implement a function that converts Celsius to Fahrenheit.
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}
void main() {
  double celsius = 25.0; // Replace with the desired temperature in Celsius
  double fahrenheit = celsiusToFahrenheit(celsius);

  print("$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit.");
}

//5.	Write a Dart function that takes a string as input and returns the reversed string. Classes:
class StringManipulator {
  String reverseString(String inputString) {
    List<String> characters = inputString.split('');
    characters = characters.reversed.toList();
    return characters.join('');
  }
}

void main() {
  StringManipulator stringManipulator = StringManipulator();
  
  String originalString = "Hello, World!";
  String reversedString = stringManipulator.reverseString(originalString);
  
  print("Original String: $originalString");
  print("Reversed String: $reversedString");
}


//6.	Create a class named Person with attributes name and age. Implement a method to display the person's information.
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  // Create an instance of the Person class
  Person person1 = Person("John Doe", 30);

  // Display the information using the displayInfo method
  print("Person 1 Information:");
  person1.displayInfo();
}




//7.	Define a class Rectangle with attributes length and width. Implement a method to calculate the area of the rectangle.


class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea() {
    return length * width;
  }
}

void main() {
  // Create an instance of the Rectangle class
  Rectangle myRectangle = Rectangle(5.0, 3.0);

  // Calculate and display the area using the calculateArea method
  double area = myRectangle.calculateArea();
  print("Rectangle Area: $area square units");
}
 
//8.  Implement a class Circle with a method to calculate the circumference.
import 'dart:math';

class Circle {
  double radius;

  Circle(this.radius);

  double calculateCircumference() {
    return 2 * pi * radius;
  }
}
void main() {
  // Create an instance of the Circle class
  Circle myCircle = Circle(4.0);

  // Calculate and display the circumference using the calculateCircumference method
  double circumference = myCircle.calculateCircumference();
  print("Circle Circumference: $circumference units");
}
//9.	Create a class BankAccount with methods to deposit and withdraw money, and to check the account balance. 
class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount > 0.0) {
      balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0.0 && amount <= balance) {
      balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid withdrawal amount or insufficient balance.");
    }
  }

  double checkBalance() {
    return balance;
  }
}

void main() {
  // Create an instance of the BankAccount class
  BankAccount myAccount = BankAccount(1000.0);

  // Deposit and check balance
  myAccount.deposit(500.0);
  print("Current Balance: \$${myAccount.checkBalance().toStringAsFixed(2)}");

  // Withdraw and check balance
  myAccount.withdraw(200.0);
  print("Current Balance: \$${myAccount.checkBalance().toStringAsFixed(2)}");
}
 


// 10A.  Write a class Student with attributes name, age, and grade. Implement a method to determine if the student passed or failed. Function and Class Interactions 
class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void determinePassOrFail() {
    if (grade >= 60.0) {
      print("$name has passed!");
    } else {
      print("$name has failed.");
    }
  }
}

void main() {
  // Create an instance of the Student class
  Student student1 = Student("Alice", 20, 75.5);

  // Call the determinePassOrFail method to check if the student passed or failed
  student1.determinePassOrFail();

  // Create another instance of the Student class
  Student student2 = Student("Bob", 22, 45.8);

  // Call the determinePassOrFail method for the second student
  student2.determinePassOrFail();
}


//10.	Define a class Calculator with methods for basic arithmetic operations (add, subtract, multiply, divide).

class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print("Error: Cannot divide by zero.");
      return double.nan; // Not-a-Number to indicate an error
    }
  }
}

void main() {
  // Create an instance of the Calculator class
  Calculator myCalculator = Calculator();

  // Perform arithmetic operations
  double resultAdd = myCalculator.add(5.0, 3.0);
  print("Addition Result: $resultAdd");

  double resultSubtract = myCalculator.subtract(8.0, 3.0);
  print("Subtraction Result: $resultSubtract");

  double resultMultiply = myCalculator.multiply(4.0, 6.0);
  print("Multiplication Result: $resultMultiply");

  double resultDivide = myCalculator.divide(10.0, 2.0);
  print("Division Result: $resultDivide");
}
//11.	Implement a class Car with methods to start, stop, and check the fuel level.
class Car {
  bool isRunning;
  double fuelLevel;

  Car() : isRunning = false, fuelLevel = 0.0;

  void start() {
    if (!isRunning && fuelLevel > 0.0) {
      isRunning = true;
      print("Car started.");
    } else {
      print("Unable to start the car. Check fuel level or the car is already running.");
    }
  }

  void stop() {
    if (isRunning) {
      isRunning = false;
      print("Car stopped.");
    } else {
      print("The car is not running.");
    }
  }

  double checkFuelLevel() {
    return fuelLevel;
  }

  void refuel(double amount) {
    if (amount > 0.0) {
      fuelLevel += amount;
      print("Refueled: ${amount.toStringAsFixed(2)} units");
    } else {
      print("Invalid refueling amount.");
    }
  }
}

void main() {
  // Create an instance of the Car class
  Car myCar = Car();

  // Check initial fuel level
  print("Initial Fuel Level: ${myCar.checkFuelLevel().toStringAsFixed(2)} units");

  // Start the car (should fail without refueling)
  myCar.start();

  // Refuel the car
  myCar.refuel(20.0);

  // Start the car again
  myCar.start();

  // Stop the car
  myCar.stop();
}

//12.	Write a Dart program that uses a function to find the maximum element in a list of integers.
int findMax(List<int> numbers) {
  if (numbers.isEmpty) {
    // Return an appropriate value when the list is empty
    print("The list is empty.");
    return null;
  }

  int max = numbers[0]; // Assume the first element is the maximum

  for (int num in numbers) {
    if (num > max) {
      max = num; // Update the maximum if a larger element is found
    }
  }

  return max;
}

void main() {
  List<int> myList = [10, 5, 8, 15, 3, 20, 12];

  // Call the findMax function to find the maximum element in the list
  int maximum = findMax(myList);

  if (maximum != null) {
    print("Maximum element in the list: $maximum");
  }
}
 
//13. Create a class Employee with attributes name, salary, and a method to give a bonus.
class Employee {
  String name;
  double salary;
Employee(this.name, this.salary);
  void giveBonus(double bonusAmount) {
    if (bonusAmount > 0.0) {
      salary += bonusAmount;    print("Bonus of \$${bonusAmount.toStringAsFixed(2)} given to $name. New salary: \$${salary.toStringAsFixed(2)}");
    } else {
      print("Invalid bonus amount.");
    }
  }
}
void main() {
  // Create an instance of the Employee class
  Employee employee1 = Employee("John Doe", 50000.0);

  // Display the initial salary
  print("${employee1.name}'s Initial Salary: \$${employee1.salary.toStringAsFixed(2)}");

  // Give a bonus to the employee
  employee1.giveBonus(5000.0);
 // Display the updated salary after the bonusprint("${employee1.name}'s Updated Salary: \$${employee1.salary.toStringAsFixed(2)}");
}


//14.	 Combine a function and a class to calculate the area of a triangle given its base and height. More Functions:

class Triangle {
  double base;
  double height;

  Triangle(this.base, this.height);

  double calculateArea() {
    return 0.5 * base * height;
  }
}

double calculateTriangleArea(double base, double height) {
  // Create an instance of the Triangle class
  Triangle triangle = Triangle(base, height);

  // Call the calculateArea method to get the area
  return triangle.calculateArea();
}

void main() {
  double base = 8.0;
  double height = 6.0;

  // Call the calculateTriangleArea function to calculate the area of the triangle
  double area = calculateTriangleArea(base, height);

  print("Triangle Area with base $base and height $height: $area square units");
}

//15.	Write a Dart program with a function to find the square root of a given number.

import 'dart:math';

double calculateSquareRoot(double number) {
  if (number >= 0) {
    return sqrt(number);
  } else {
    print("Error: Cannot calculate the square root of a negative number.");
    return double.nan; // Not-a-Number to indicate an error
  }
}

void main() {
  double inputNumber = 25.0; // Replace with the desired number

  // Call the calculateSquareRoot function to find the square root
  double result = calculateSquareRoot(inputNumber);

  if (!result.isNaN) {
    print("Square Root of $inputNumber: $result");
  }
}

//16.  Create a function that generates a list of Fibonacci numbers up to a specified limit.
List<int> generateFibonacci(int limit) {
  List<int> fibonacciList = [];
  int a = 0, b = 1, nextTerm = 0;
  while (nextTerm <= limit) {
    fibonacciList.add(nextTerm);
    a = b;
    b = nextTerm;
    nextTerm = a + b;
  }
  return fibonacciList;
}
void main() {
  int limit = 50; // Set your desired limit here
  List<int> fibonacciList = generateFibonacci(limit);
  print("Fibonacci numbers up to $limit:");
  print(fibonacciList);
}

//17.	Implement a function to determine if a given year is a leap year.
bool isLeapYear(int year) {
  if (year % 4 == 0) {
    // If divisible by 4
    if (year % 100 == 0) {
      // If also divisible by 100
      return year % 400 == 0; // Leap year only if divisible by 400
    } else {
      return true; // Leap year if divisible by 4 but not by 100
    }
  } else {
    return false; // Not a leap year
  }
}

void main() {
  int yearToCheck = 2024; // Replace with the desired year

  // Call the isLeapYear function to determine if the year is a leap year
  bool result = isLeapYear(yearToCheck);

  if (result) {
    print("$yearToCheck is a leap year.");
  } else {
    print("$yearToCheck is not a leap year.");
  }
}


//18.	Define a recursive function to compute the factorial of a number.
int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}

void main() {
  int number = 5; // Replace with the desired number for which you want to calculate the factorial
  int factorial = calculateFactorial(number);

  print("The factorial of $number is: $factorial");
}

//19.	Write a function that takes a list of integers and returns a new list with only the even numbers.

List<int> filterEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenNumbers.add(num);
    }
  }

  return evenNumbers;
}

void main() {
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Call the filterEvenNumbers function to get a new list with only even numbers
  List<int> evenNumbersList = filterEvenNumbers(originalList);

  print("Original List: $originalList");
  print("List with Even Numbers: $evenNumbersList");
}
