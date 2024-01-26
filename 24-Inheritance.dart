void main() {

  // INHERITANCE

  Car car1 = Car();
  print(car1.isEngineWorking); // car1 herdou variaveis e metodos da class Vehicle por isso imprime aqui
  print(car1.noOfWheels);

  Truck truck1 = Truck();
  print(truck1.noOfWheels);

  Vehicle car2 = Car(); // Um veículo pode ser criado definindo-o como um carro.
                        // Quando faço isso, nao consigo acessar variaveis de car chamando car2 porque este eh um veiculo
  // print(car2.noOfWheels);  gera erro! Dart acha que car2 é veiculo e nao um Car
  print((car2 as Car).noOfWheels); // agora acessa variavel noOfWheels do objeto car2 transformando car2 em Car de verdade

  Vehicle car3 = Truck();
  print((car3 as Truck).noOfWheels);

  }

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;

  void accelerate()=> speed+=10;
}

class Car extends Vehicle {
  int noOfWheels = 4;
  void printSomething() => print(noOfWheels);
}

class Truck extends Vehicle {
  int noOfWheels = 8;

  void printSomething()=>print(noOfWheels);
}
