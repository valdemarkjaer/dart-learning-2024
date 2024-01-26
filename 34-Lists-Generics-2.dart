// LIST e GENERICS
void main() {
  List list = [10,20,30, 'Hello!', false]; // List é dynamic por default
  print(list[2]);
  List<int> list2 = [0,2,200]; // List<int> exige que so tenha int
  List<Object> list3 = [0,9,89.7,'Kjaer',false,8]; // pode colocar qualquer tipo de objeto, menos null porque nao eh objeto, eh outra hierarquia
  // gera erro: primeiro tem de criar um por um: List<Student> list4 =['Valdemar','Jaqueline',false,true,90,87.6];
  List<Student> lista5 = [Student('Valdemar'),Student(89),Student(false),Student('Jaqueline'),Student('Estudante da Lista 5 numero 4')];
  print(lista5);
  print(lista5[3]);
  lista5[3].printName();

  Student student1 = Student('Valdemar'); // compilador define <T> da classe como String
  Student student2 = Student(20.5); // compilador define <T> da classe como double
  final student3 = Student(false); // compilador define <T> como booleano

  print(student1.name); // vai dar o valor
  print(student2.name);
  print(student3.name);

  StudentDynamic studentDynamic1 = StudentDynamic (90.56); // funciona, mas nao permite checagem de tipo depois
  print(studentDynamic1);

  final student4 = Student<String>('Jaqueline');

  if (lista5[4] is Student) {
    print (lista5[4].name);} else {
    print (lista5);
  }
}

class Student<T> { // genérico. Pode escrever qualquer coisa <A>, <X> etc.
  final T name;
  Student(this.name); // construtor

  void printName() {
    print(name);
  }
}

class StudentDynamic { // em vez de usar generico, pode-se usar uma variavel dynamic, mas aih perde a
  final dynamic name;  // a checagem de tipo que o generico oferece
  StudentDynamic(this.name);
}
