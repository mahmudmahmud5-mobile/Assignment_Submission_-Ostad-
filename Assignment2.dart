import 'dart:io';

void converter() {


  {
    print("------------------------------");
    print("------------------------------");
    print("SMART TEMPERATURE CONVERTER");
    print("------------------------------");
    print("------------------------------");

    print("1. Celsius to Fahrenheit");
    print("2. Fahrenheit to Celsius");
    print("3. Celsius to Kelvin");
    print("4. Kelvin to Celsius");
    print("5. Fahrenheit to Kelvin");
    print("6. Kelvin to Fahrenheit");
    print("7. Exit");


    double f;
    String name;

    print("Enter your choice");
    int n = int.parse(stdin.readLineSync()!);


    if (n == 1) {
      name = "Celsius";
    }
    else if (n == 2) {
      name = "Fahrenheit";
    }
    else if (n == 3) {
      name = "Celsius";
    }
    else if (n == 4) {
      name = "Kelvin";
    }
    else if (n == 5) {
      name = "Fahrenheit";
    }
    else if (n == 6) {
      name = "Kelvin";
    }
    else {
      print("Invalid");
      return;
    }

    print("Enter temperature in $name");
    int temp = int.parse(stdin.readLineSync()!);


    if (n == 1) {
      f = (temp * 1.8) + 32;
      print("$temp C= $f F");
    }
    else if (n == 2) {
      f = (temp - 32) * 5 / 9;
      print("$temp F= $f C");
    }
    else if (n == 3) {
      f = temp + 273.15;
      print("$temp C= $f K");
    }
    else if (n == 4) {
      f = temp - 273.15;
      print("$temp K= $f C");
    }
    else if (n == 5) {
      f = (temp - 32) * 5 / 9 + 273.15;
      print("$temp F= $f K");
    }
    else if (n == 6) {
      f = (temp - 273.15) * 9 / 5 + 32;
      print("$temp K= $f F");
    }
    else {
      print("Invalid");
    }
  }
}
void main(){
  converter();


  print("Do you want to perform another conversion?(y/n)");
  String again=stdin.readLineSync()!;

  while(again.toLowerCase() =='y'){
    converter();

    print("Do you want to perform another conversion?(y/n)");
    again=stdin.readLineSync()!;

  if (again.toLowerCase() == "n") {
    print("------------------------------");
    print("------------------------------");
    print("Thank you!");
    print("Program Ended");
    print("------------------------------");
    print("------------------------------");
  }
  }
}