import 'currencies.dart';

//importing currency type from different file;
class BankAccount {
  int id;
  double _accountBalance = 0;
  String accountHolder;
  Currency currency = Currency.dollar; //set a default currency;
  BankAccount(this.id, this.accountHolder);

  double get getAccountBalance {
    return _accountBalance;
  }

  void set deposit(value) {
    //don't allow negative falues;
    if (value < 0) {
      print("Negative numbers are not accepted");
    } else {
      _accountBalance = _accountBalance + value;
      print(
          "$value was added to your account. your balance now is $_accountBalance.");
    }
  }

  void set withdrawal(value) {
    if (value < 0) {
      print("Negative numbers are not accepted");
      return;
    }
    if (value <= _accountBalance) {
      _accountBalance = _accountBalance - value;
      print(
          "$value was removed from your account. your balance now is $_accountBalance");
    } else {
      print(
          "You don't have this value available, your balance is $_accountBalance");
    }
  }
}
