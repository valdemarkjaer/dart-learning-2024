// IMPLEMENTS
/*
void main() {

}

class Vehicle {
  bool isEngineWorking = false;
  bool isLightOn = true;
  int noOfWheels = 10;
}

class Car implements Vehicle {                     // implements te obriga a escrever de novo
  @override                                        // todas as variaveis e metodos.
  bool isEngineWorking = true;                     // com implements nao pode usar os valores da
                                                   // classe pai, nao pode usar super. Tem de fazer
  @override                                        // os proprios valores
  bool isLightOn = true;

  @override
  int noOfWheels = 4;

  void accelerate() => print('Acelerando car');
}

class Truck implements Vehicle {
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  int noOfWheels = 6;

    void accelerate() => print('Acelerando truck');
}

class Owner {
  final String nomeDoDono = "dono";
}

class Bike extends Owner implements Vehicle {    // voce pode fazer uma classe que implements uma classe
                                                 // e que extends outra classe. Aí pode usar super.
}
*/
