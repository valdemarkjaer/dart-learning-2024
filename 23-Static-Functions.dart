void main () {

  // STATIC FUNCTION

  print(Constants.greeting);  // estou acessando a variavel da classe porque eh static. Nao preciso criar
                              // um objeto, ocupar espaço da memória com um objeto. posso chamar direto da classe
  print(Constants.bye);

  print(Constants.giveMeSomeValue());
}

class Constants { // Para usar as variaveis static, nao precisa criar objeto Constant. Basta acessar direto.
                  // Veja linhas 5 e 7

  static String greeting='Olá, como está?';
  static String fabricante='Kjaer software';
  static String bye = 'Bye';

  static int giveMeSomeValue() => 10; // funcao STATIC
}
