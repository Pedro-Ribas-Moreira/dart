import 'bankAccount.dart';
import 'dart:math';

void main(List<String> args) {
  BankAccount newAcc = BankAccount(newId(), "Pedro Moreira");
  print(newAcc.id);
  // newAcc.accountBalance  -- unable to get this information as it is protected; need to use get and set;

  //getting a new account balance;
  print(newAcc.getAccountBalance);
  //setting a new account balance
  newAcc.deposit = 20;

  newAcc.withdrawal = 100;
  newAcc.withdrawal = -1;
  newAcc.withdrawal = 10;
}

int newId() {
  Random random = Random();
  return random.nextInt(100);
}
