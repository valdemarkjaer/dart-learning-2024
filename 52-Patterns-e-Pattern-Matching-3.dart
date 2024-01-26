// Patterns & Pattern matching -3
void main() {
  final human = Human('Nice Name',2);
  print(human.name);
  print(human.age); print('');

  // jeito diferente de atribuir variaveis com atributos de um outro objeto:
  final Human(:name, :age) = human;   // obs: se escrever final Human(:age, :name) = human;  tambem atribui variaveis corretamente
  print(name);
  print(age);

  final Human(age:idade, name:nome) = human;
  print(idade);
  print(nome); print('');


}

class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}
