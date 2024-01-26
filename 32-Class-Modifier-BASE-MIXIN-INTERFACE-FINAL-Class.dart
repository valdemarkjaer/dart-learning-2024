// CLASS MODIFIERS - 2 - FINAL BASE INTERFACE MIXIN CLASS
// Sealed Class eh um tipo de classe abstrata, mas que nao permite extensoes

void main() {



  }

sealed class Animal {} // nao tem construtor
final class Animal1 {} // pode ter construtor. final class impede que classes sejam extendidas ou implementadas
                       // a partir de arquivos de fora, igual a uma sealed class tambem impede.
base class Animal2 {} // base class nao pode ser implementada, mas pode ser EXTENDIDA.
                      // qualquer classe extendendo a base class Animal2 PRECISA OBRIGATORIAMENTE SER
                      // uma Classe base, final ou sealed.

// gera erro: class Human extends Animal2 {}    - class Human tem de ser declarada base, sealed ou final

interface class Animal3 {} // é o contrário da base class. a classe Interface só pode ser IMPLEMENTADA
                           // porem nao eh uma verdadeira interface porque a classe interface pode ter Construtor
abstract interface class Animal4 {} // essa sim eh uma interface verdadeira, nao pode ter construtor
mixin class Animal5{} // classe que pode ser mixin e class
