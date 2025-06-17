abstract class Pontucao{
  void calculaPontos();
  void devolverPontos();
}

class Volei extends Esporte implements Pontucao {

  Volei(super.time);

  @override
  void calculaPontos(){}

  @override
  void devolverPontos(){}

}

abstract class Esporte{
  String time;

  Esporte(this.time);
}