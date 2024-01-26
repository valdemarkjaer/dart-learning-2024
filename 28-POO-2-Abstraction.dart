// PROGRAMACAO ORIENTADA A OBJETOS - ABSTRACTION
void main() {
    // Polimorfismo

  // Abstracao = processo de esconder detalhes internos e a complexidade de um objeto e expor apenas as
  // caracteristicas e funcionalidades essenciais. Pode ser obtida com Classes ABSTRATAS e INTERFACES
  Animal anim = Cat();
  anim.sound();
  Animal anim2 = Dog();
  anim2.sound();
      // Erro: Animal anim3 = Animal(); porque classes abstratas nao podem ser instanciadas.
      // Interfaces tambem dariam erro.


    // Heranca
    // Encapsulamento
}

abstract class Animal { // perceba que aqui a classe animal foi declarada ABSTRACT e o metodo sound ficou vazio
  void sound();
}
class Cat extends Animal {
  @override
  void sound() => print ('Miau');
}
class Dog extends Animal {
  @override
  void sound() => print('Au au');
}
