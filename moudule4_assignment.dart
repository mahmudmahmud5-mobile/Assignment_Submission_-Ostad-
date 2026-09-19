class book{
  String? title;
  String? author;
  double price=0;
  double _discountedPrice=0;

double get discountPrice{
  return _discountedPrice;
}
set discountedPrice(double x){
   _discountedPrice=x;
}

void discount(){
  price=price * 0.97;
  print("Discounted price is:$price");
}

void display(){
  print("Title:$title");
  print("Author:$author");
  print("Price:$price");
}
  book(this.title,this.author,this.price);


}
class Employee{
  String? name;
  int? salary;

}
class Manager extends Employee{
   String? department;
   String? name;
   int? salary;

   Manager(this.name, this.salary,this.department);


}

class Developer extends Employee{
  String? programmingLanguage;
  String? name;
  int? salary;

  Developer(this.name,this.salary,this.programmingLanguage);
  }


abstract class Appliance{
void turnOn();
void turnOff();
}
class Fan implements Appliance{
@override
  void turnOn(){
  print("Fan is RUNNING");
}

@override
  void turnOff(){
  print("Fan is Switch OFF");
}


}




class Light implements Appliance{
 
  @override
  void turnOn(){
    print("Lght is Switch ON");
  }
  @override
  void turnOff(){
    print("Light is Switch OFF");
  }
  

}

main(){
  book ob1=book("ICTBook","Engr Mahmud", 250);
  ob1.display();
  ob1.discount();

  book ob7=book("English Grammer book", "Chowdhawary & Hossain", 480);
  ob7.display();
  ob7.discount();

  Manager ob2=Manager("Sazzad Ahmed",45000,"Department:FIST");


  Developer ob3=Developer("Mostafizur Rahman", 50000,"Programming Language: DART");

  
  Fan ob4=Fan();
  ob4.turnOn();
  ob4.turnOff();
  
  Light ob5=Light();
  ob5.turnOn();
  ob5.turnOff();


}