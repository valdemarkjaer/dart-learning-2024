// LIST e GENERICS
void main() {

  List<StudentGeneric> studentsGenerics = [StudentGeneric('Valdemar'),StudentGeneric('Jaqueline'),
          StudentGeneric('Julia'),StudentGeneric('Sarah'),StudentGeneric('Niels Roberto'),
          StudentGeneric('Cecilia'),StudentGeneric('Catarina')];
  print(studentsGenerics);

   List<Student> students = [Student('Valdemar'),Student('Jaqueline'),
          Student('Julia'),Student('Sarah'),Student('Niels Roberto'),
          Student('Cecilia'),Student('Catarina')];

  print(students);

  students.add(Student('outra crianca'));
  print(students);
  students[7] = Student('Substituida');
  print(students);
  students.insert(0,Student('Niels Augusto'));
  print (students);
  students.insert(1,Student('Setsuko'));
  print (students);

  }

class StudentGeneric<T> { // genérico. Pode escrever qualquer coisa <A>, <X> etc.
  final T name;
  StudentGeneric(this.name); // construtor

  void printName() {
    print(name);
  }
}

class Student { // genérico. Pode escrever qualquer coisa <A>, <X> etc.
  final String name;
  Student(this.name); // construtor

  @override                                // sem o metodo toString definido aqui em @override, ou seja, substituindo o original de qualquer class,
  String toString() => 'Student: $name';   // a cada chamada de print student ia aparecer a frase "Instance of Student". toString original eh padrao
}


class StudentDynamic { // em vez de usar generico, pode-se usar uma variavel dynamic, mas aih perde a
  final dynamic name;  // a checagem de tipo que o generico oferece
  StudentDynamic(this.name);
}
