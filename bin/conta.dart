import 'package:conta/account.dart';

void main() {

Conta contaMatheus = Conta("Matheus", 2000);

Conta contaRoberta = Conta("Roberta", 2000);

ContaCorrente contaYasmin = ContaCorrente("Yasmin", 5000);

ContaPoupanca contaGabriel = ContaPoupanca("Gabriel", 1000);

List<Conta> contas = <Conta> [contaRoberta, contaMatheus];

for (Conta conta in contas){
  conta.imprimirSaldo();
}

contaRoberta.receber(5000);
contaRoberta.transferir(2000);

contaMatheus.transferir(1000);
contaMatheus.receber(3000);


contaYasmin.receber(1000);
contaYasmin.transferir(2000);

contaGabriel.receber(500);
contaGabriel.transferir(1000);

}

