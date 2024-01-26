void main(){

// CONSTRUTOR BASICO DE CLASSE

  // final cookie1A = Cookie1();    gera erro porque nao passou parametros
  // final cookie1B = new Cookie(); gera erro porque nao passou parametros 

  final cookie1A = Cookie1('Redondo',80);
  final cookie1B = new Cookie1('Quadrado',20); // Dart nao exige a palavra new, mas eh habito de quem vem do java e c++
  
  print (cookie1A.shape);
  print (cookie1B.shape);
}

class Cookie1 {
  // CONSTRUTOR DA CLASSE:
  Cookie1(this.shape, this.size) {}

  /*
     Observe acima que o simples fato de receber this.shape e this.size já
     seta as variáveis corretas. Isso se faz pela passagem de argumentos
     posicionais e a declaração desses parâmetros de forma posicional,
     aqui no método construtor
  */
        
  // variables
  String shape;
  double size;
  
  
  // methods -> as funções dentro de classe mudam de nome.
  // Funções fora de classe chamamos de functions mesmo
  void baking() {
    print ('baking started');
  }
  
  bool isCooling() {
    return false;
  }
}