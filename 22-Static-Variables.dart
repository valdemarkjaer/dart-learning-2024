void main () {

  // Variáveis STATIC

  /* Quando temos por exemplo um objeto cookie com várias variáveis, cada objeto construído ocupa espaço de memória onde cada variável vai ter o seu próprio gasto de memória.
   * Só que pode acontecer de não precisarmos ter uma cópia da variável pra cada objeto criado. Às vezes uma mesma informação pode ser constante em todos os objetos.
   * Assim, basta ter uma única cópia dessa informação constante compartilhada por todos os objetos daquela classe.
   * Essa cópia única, comum a todos os objetos, é um parâmetro static. Você também pode criar uma
   * Classe cheia de valores static para um certo aplicativo. Veja segunda classe de exemplo:
   *
   */

  print(Constants.greeting);  // estou acessando a variavel da classe porque eh static. Nao preciso criar
                              // um objeto, ocupar espaço da memória com um objeto. posso chamar direto da classe
}

class Cookie {
  final String shape;
  final double size;
  static final String ingrediente1 = 'farinha';
  static final String ingrediente2 = 'acucar';
  static final String ingrediente3 = 'ovo';

  Cookie (this.shape, this.size) {
    baking();
  } // construtor Cookie()

// static functions

// static variables

void baking() => print('assando');
bool isCooling() => false;
} // class Cookie

class Constants { // Para usar as variaveis static, nao precisa criar objeto Constant. Basta acessar direto.
                  // Veja linha 13
  static String greeting='Olá, como está?';
  static String fabricante='Kjaer software';
  static String bye = 'Bye';
}
