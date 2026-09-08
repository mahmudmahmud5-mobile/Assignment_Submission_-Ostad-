class BankAccount{
  String? name;
  int? acc;
  int _balance=0; //Private Key, Encapsulation


  BankAccount(this.name, this.acc, this._balance); //Construction

  set balance(int x){
    _balance=x;
  }

  int get balance{
    return _balance;
  }
  void deposite(int tk){ // Method
   if(tk<=0){
     print("Invalid");
   }
   else{
     balance=balance+tk;
     print("After Deposit: Balance:$balance");
   }
  }

  void withdraw(int money){  //Method
    if(money<=0){
      print("Invalid");
    }
    else if(money>balance){
      print("No Balance");
    }
    else{
      balance=balance-money;
      print("After withdrew Balance:$balance");
    }
  }

  void displayAccountInfo(){  //
    print("Acoounts Holder Name:$name");
    print("Account Number:$acc");
    print("Balance:$balance");
  }


}

main(){
  BankAccount account1=BankAccount("Ezan",1002,2200);

  account1.deposite(500);
  account1.withdraw(1000);
  account1.displayAccountInfo();



  BankAccount account2=BankAccount("Saifan", 9120,1500);

  account2.deposite(700);
  account2.withdraw(3000);
  account2.displayAccountInfo();


}