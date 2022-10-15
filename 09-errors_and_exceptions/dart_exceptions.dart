import 'controllers/bank_controller.dart';
import 'models/account.dart';
import 'exceptions/bank_controller_exceptions.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 1250);
    // Observando resultado
    if (result) {
      print("Transaction successful");
    }
    ;
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("The ID '${e.idSender}' is not a valid ID.");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("The ID '${e.idReceiver}' is not a valid ID.");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("The account is not authenticated");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print("You can't send ${e.amount}, your balance is only ${e.balance}");
  } on Exception catch (e) {
    print(e);
    print("something went wrong");
  }
}
