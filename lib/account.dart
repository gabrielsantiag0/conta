abstract class Conta {
  

  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber( double value ){
    print("$titular recebeu R\$$value");
  _saldo += value; 
  imprimirSaldo();
  }

  void transferir( double value){
    if(value >=value){
    _saldo -= value;
    print("$titular transferiu R\$$value");
    imprimirSaldo();
    }
  
  }

  void imprimirSaldo(){
    print("O saldo atual de $titular é: R\$$_saldo");
    print('----------------------------------');
  }

}

class ContaCorrente extends Conta {

  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo); 
  //: super(titular, _saldo); tambem pode ser usado contaCorrente(): super(atributos que vc quer "clonar");

  @override 
  //@override é usado para sobrescrever o metodo da classe pai
  // sobrescrevendo o metodo receber 
  void transferir(double value){
    if(_saldo + emprestimo >= value){
      _saldo -= value;
      print("$titular transferiu R\$$value");
      imprimirSaldo();
    }
  }

}

class ContaPoupanca extends Conta {
  
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calcularRendimento(){
   _saldo += _saldo * rendimento;
   print("O saldo atual de $titular com rendimento é: R\$_saldo");
  }
}

mixin Impost {
  double taxa = 0.03;

  double valorTaxado(double value) {
    return value * taxa;
  }

}

class ContaEmpresa extends Conta with Impost {
  ContaEmpresa(super.titular, super._saldo);

  @override
  void transferir(double value) {
    if (_saldo >= value + valorTaxado(value)){
      _saldo -= value + valorTaxado(value);
    }
  }

   @override
  void receber(double value) {
      _saldo += value - valorTaxado(value);
  }

}
