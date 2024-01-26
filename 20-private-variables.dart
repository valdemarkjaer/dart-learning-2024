void main() {
  final cookie = Cookie(shape:'borboleta', size: 88);
  print (cookie.shape);
  print (cookie._quantidade); // essa variavel eh private apenas se for tentado chamar a partir de outro arquivo. Dentro do mesmo arquivo, mesmo que fora da classe objeto, consegue acessar o valor
}

class Cookie {
  final String shape;
  final double size;
  Cookie ({required this.shape, required this.size}) {  // construtor com parametros posicionais
    print('biscoito criado com formato $shape e tamanho $size');
    baking();
  }

    // variaveis PRIVADAS: nao tem palavra private. Só tem um jeito de
    // declarar, que é usando o underscore _

    int _quantidade = 10; // _ significa private mas Dart tem um defeito.
                          // _ deixa variavel privada apenas para o acesso de
                          // OUTROS ARQUIVOS. Se a chamada para esse valor
                          // estiver dentro do mesmo arquivo, mas fora da
                          // classe ou objeto, quem chama consegue acessar o
                          // valor. Veja chamada dessa variavel na funcao
                          // main da linha numero 4

    int _height =4;
    int _width = 5;

  // Métodos:
  int calculateSize() => _height * _width;
  void baking() => print('assando');
  bool isCoooling() => false;
}
