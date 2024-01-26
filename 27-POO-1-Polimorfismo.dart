// PROGRAMACAO ORIENTADA A OBJETOS - POLYMORPHISM
void main() {
  final date = DateTime.now(); // DateTime.now é um método abstrato, pode ser chamado mesmo sem ter
  print(date);                 // instanciado um objeto
  // Polimorfismo
  Animal cat = Cat(); // como Dog e Dat sao ambas subclasses da superclasse Animal, e como o objeto cat foi
  cat.sound();        // declarado Animal, entao voce pode declarar objeto cat tanto como Dog como Cat ou
  cat = Dog();        // animal. Objetos de subclasse declarados como se fosse da superclasse podem ser
  cat.sound();        // tratados como um objeto da superclasse pura e simplesmente. Se for declarado
                      // Cat cat = Cat(); aih nao pode mudar de classe, dah erro tentar virar Dog ou mesmo
                      // Animal.

  // Abstracao
  // Heranca
  // Encapsulamento
}

class Animal {
  void sound() {
    print('Animal fazendo som');
  }
}
class Cat extends Animal {
  @override
  void sound() => print ('Miau');
}
class Dog extends Animal {
  @override
  void sound() => print('Au au');
}
