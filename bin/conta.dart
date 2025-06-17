import 'package:conta/account.dart';

void main() {


ContaCorrente contaYasmin = ContaCorrente("Yasmin", 5000);

ContaPoupanca contaGabriel = ContaPoupanca("Gabriel", 1000);

// List<Conta> contas = <Conta> [contaRoberta, contaMatheus];

// for (Conta conta in contas){
//   conta.imprimirSaldo();
// }


contaYasmin.receber(1000);
contaYasmin.transferir(2000);

contaGabriel.receber(500);
contaGabriel.transferir(1000);

}

