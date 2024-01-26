// CLASS MODIFIERS - 1 - SEALED CLASS
// Sealed Class eh um tipo de classe abstrata, mas que nao permite extensoes

void main() {
  Animal animal = Cat();

  switch(animal){
    case Dog():
      print('Dog');
    // os outros subtipos de Animal nao sao obrigatorios quando se faz switch de uma classe abstrada comum.
    // se fosse classe Sealed, TODOS os casos da classe teriam de ser tratados. Veja a classe Animal2
  }


  Animal2 animal2 = Dog2(); // classe Animal2 eh sealed. Se faltar uma de suas subclasses nesse switch,
  switch (animal2) {        // retorna erro de que type Animal2 is not exhaustively matched by the switch
    case Dog2():            // cases since it doesn´t match ...
      print('Dog2');
    case Cat2():
      print('Cat2');
    case Human2():
      print('Human2');
    // perceber que o case de Cat2B nao foi tratado e nao dah bug porque Cat2B nao eh subclasse direta da classe Animal2
    // Ou seja, Cat2B eh uma subclasse INDIRETA de Animal2
  }

   }

abstract class Animal {}

class Human implements Animal {}
class Dog implements Animal{}
class Cat extends Animal{}


sealed class Animal2 {}              // classes Sealed sao similares a uma class abstract. Nao podem ser instanciadas
class Human2 implements Animal2 {}
class Dog2 implements Animal2 {}
class Cat2 extends Animal2 {}

class Cat2B implements Cat2 {} // essa eh subclasse de subclasse de Animal2. Cat2B esta fora do sealed,
                               // nao precisa estar tratada no switch acima. Poderia ser definida em outra
                               // arquivo tambem, nao precisaria estar no mesmo arquivo da classe Animal2

/* Sealed class impede que sejam feitas extensoes ou implementacoes a partir de um arquivo externo.
 * Se a classe sealed foi definida num arquivo a.dart, as classes filhas nao podem ser definidas em um
 * arquivo b.dart. todas as classes que implementam ou extendem a classe sealed precisam estar no mesmo
 * arquivo. */
