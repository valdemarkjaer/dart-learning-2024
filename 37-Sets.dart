// SETS // parecido com lista, mas tira automaticamente itens duplicados. Soh mantem o primeiro
// em vez de [] sets usam {}
void main() {
  final Student penetra1 = Student('penetra 1',10); // item que sera inserido varias vezes no set abaixo
  final Student penetra2 = Student('penetra 2',20); // item que sera inserido varias vezes no set abaixo

   Set<Student> students = {Student('Valdemar',80),Student('Jaqueline',100),penetra1,penetra1,penetra2,
          Student('Julia',70),Student('Sarah',70),Student('Niels Roberto',60),
          Student('Cecilia',60),penetra2,Student('Catarina',50),penetra2,penetra1,penetra2};

  print(students);

  // Eh possivel pegar uma lista e fazer o comando toSet a fim de tirar itens duplicados:
   List<Student> students2 = [Student('Valdemar',80),Student('Jaqueline',100),penetra1,penetra1,penetra2,
          Student('Julia',70),Student('Sarah',70),Student('Niels Roberto',60),
          Student('Cecilia',60),penetra2,Student('Catarina',50),penetra2,penetra1,penetra2];
  print(students2);
  print(students2.toSet());
  }

class Student { // genérico. Pode escrever qualquer coisa <A>, <X> etc.
  final String name;
  final int marks;
  Student(this.name, this.marks); // construtor

  @override                                // sem o metodo toString definido aqui em @override, ou seja, substituindo o original de qualquer class,
  String toString() => 'Student: $name';   // a cada chamada de print student ia aparecer a frase "Instance of Student". toString original eh padrao
}
