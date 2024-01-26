// LIST e GENERICS
void main() {
  List list = [10,20,30, 'Hello!', false]; // List é dynamic por default
  print(list[2]);
  List<int> list2 = [0,2,200]; // List<int> exige que so tenha int

  Student student1 = Student('Valdemar'); // compilador define <T> da classe como String
  Student student2 = Student(20.5); // compilador define <T> da classe como double
  final student3 = Student(false); // compilador define <T> como booleano

  print(student1.name); // vai dar o valor
  print(student2.name);
  print(student3.name);

  StudentDynamic studentDynamic1 = StudentDynamic (90.56); // funciona, mas nao permite checagem de tipo depois
  print(studentDynamic1);

  final student4 = Student<String>('Jaqueline');
}

class Student<T> { // genérico. Pode escrever qualquer coisa <A>, <X> etc.
  final T name;
  Student(this.name); // construtor

  void printName(T name) {
    print('Name = $name');
  }
}

class StudentDynamic { // em vez de usar generico, pode-se usar uma variavel dynamic, mas aih perde a
  final dynamic name;  // a checagem de tipo que o generico oferece
  StudentDynamic(this.name);
}
