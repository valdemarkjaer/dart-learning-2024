void main() {

  // CONSTRUTORES

  Biscoito1 biscoito1A = Biscoito1(null,null); // criando biscoito explicitamente da classe Biscoito1
    // cria biscoito sem nenhuma variavel setada. É obrigatório passar null duas vezes.
    // Se passar vazio, Biscoito1(), dá erro.

  final biscoito1B = Biscoito1('redondo',90); // criando biscoito deixando pro Dart definir a classe automaticamente



  Biscoito2 biscoito2A = Biscoito2('Quadrado', 10);

  biscoito2A.formato = 'Triangulo'; // isso é ruim, viola encapsulamento. No proximo arquivo vamos evitar que as variaveis de uma classe sejam acessiveis de fora, sem passar por metodo especifico
}
class Biscoito1 {
  String? formato; // ao definir variavel nullable, posso ter chamada de construtor passado com parametros vazios
  double? tamanho;
  Biscoito1(this.formato, this.tamanho) {
    print('Construtor1 chamado');
    assando();
  }
  void assando() => print('Biscoito1 assando');
  bool estaEsfriando() => false; // nao pode ter palavra return
}

class Biscoito2 {
  String? formato = 'formato antes do construtor de Biscoito2 (default) = Redondo'; // ao definir variavel nullable, posso ter chamada de construtor passado com parametros vazios
  double? tamanho;
  Biscoito2(String formato, double tamanho) {
    print(this.formato);
    this.formato = formato;
    this.tamanho = tamanho;
    print('Construtor2 chamado');
    print('formato apos construtor de Biscoito2 ser chamado: ${this.formato}');
  }
  void assando() => print('Biscoito2 assando');
  bool estaEsfriando() => false; // nao pode ter palavra return
}
