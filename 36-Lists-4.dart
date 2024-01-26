// LISTS - 4
void main() {

   final Student penetra1 = Student('Penetra1',10);
   final Student penetra2 = Student('Penetra2',20);
   List<Student> students = [Student('Valdemar',80),Student('Jaqueline',100),penetra1,
          Student('Julia',70),Student('Sarah',70),Student('Niels Roberto',60),
          Student('Cecilia',60),penetra2,Student('Catarina',50)];

  print(students);

  students.add(Student('outra crianca',20));
  print(students);
  students[2] = Student('Substituida',30);
  print(students);
  students.insert(0,Student('Niels Augusto',100));
  print (students);
  students.insert(1,Student('Setsuko',100));
  print (students);

  //  plano de acao:
  // 1- criar uma nova lista vazia de students
  // 2- add na nova lista todo mundo com notas >= 50

  List<Student> filteredStudents = [];

  /* modo 1 de realizar a tarefa:
   * for (int i=0; i<students.length; i++) {
   * if (students[i].marks >= 50) {
   * filteredStudents.add(students[i]);}
   * }
   * */

  // modo 2 de realizar a tarefa:
  for (final student in students) {     // tem de ter a palavra final, var ou Student para a variavel
    if(student.marks>=50){              // porque faz checagem de tipo no loop estrangeiro (foreign loop)
      filteredStudents.add(student);
    }
  }

  /* modo 3 de realizar a tarefa:
   *
   * final filteredStudentes = students.where((student) => student.marks >= 50)
   *           só que a partir disso, deixa de ser uma lista e passa a ser uma Iterable.
   *           para voltar a ser uma lista, tem de dar o comando:
   * filteredStudents.toList();
   * ou print(filteredStudents.toList());
   * */

  print(filteredStudents);

  // outros metodos de list: length, reverse,

  print(students.reversed.toList());

  // addAll [ item a, item b, item c]     = adiciona varios itens de uma vez soh
  // contains =   students.contains() faz um loop e checa quais elementos seguem a condicao procurada
  // removeAt (indice)

  }

class Student { // genérico. Pode escrever qualquer coisa <A>, <X> etc.
  final String name;
  final int marks;
  Student(this.name, this.marks); // construtor

  @override                                // sem o metodo toString definido aqui em @override, ou seja, substituindo o original de qualquer class,
  String toString() => 'Student: $name';   // a cada chamada de print student ia aparecer a frase "Instance of Student". toString original eh padrao
}
