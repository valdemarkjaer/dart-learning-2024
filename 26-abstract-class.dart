// ABSTRACT CLASS
void main() {

}

abstract class Vehicle {  // classes abstratas não podem ter construtor
  int noOfWheels = 10;
  void accelerate();  // em classes abstratas nao precisa criar bloco de codigo ou fazer fat arrow function
}


class Car implements Vehicle {                     // implements te obriga a escrever de novo
  @override                                        // todas as variaveis e metodos.
  void accelerate() => print('Acelerando car');
  @override
  int noOfWheels = 4;
}

class Truck extends Vehicle {
  @override                                                              // classes abstratas de OBRIGAM a redefinir metodos
  void accelerate() => print('Acelerando truck com $noOfWheels rodas');  // herdados da classe pai usando override
}                                                                        // as variaveis nao precisam ser redefinidas - veja noOfWheels
                                                                         // nas classes nao-abstratas voce nao precisa redefinir
                                                                         // com @override
                                                                         // porem, variaveis nao precisam de @override
/* Na verdade, todas as classes normais sao "abstratas". A palavra abstract apenas te força a seguir algumas
 * regras. Por exemplo, tem de fazer override dos métodos. Alẽm disso, classes abstratas NÃO podem ter construtores
 * e os métodos não precisam ter corpo na declaracao da classe abstrata. */
