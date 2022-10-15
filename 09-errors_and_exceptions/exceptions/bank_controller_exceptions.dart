class SenderIdInvalidException implements Exception {
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return "$report \n ID Sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() {
    return "$report \n The ID: $idReceiver in invalid";
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  bool isAuthenticated;
  SenderNotAuthenticatedException({required this.isAuthenticated});

  @override
  String toString() {
    return "$report \nthe Sender is not authenticated";
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = "SenderBalanceLowerThanAmountException";

  double balance;
  double amount;
  SenderBalanceLowerThanAmountException(
      {required this.balance, required this.amount});
  @override
  String toString() {
    return "$report \n Send amount: $amount is higher than the balance: $balance";
  }
}
