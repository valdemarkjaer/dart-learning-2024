// Enhanced ENUMS - funcionam como uma classe tambem
void main(){

  final employee1 =Employee('Valdemar', EmployeeType.swe);
  final employee2 = Employee('Fulano', EmployeeType.finance);

  final employee3 = Employee('Sonal', EmployeeType.marketing);

  employee1.fn();
  employee2.fn();
  employee3.fn();
}

enum EmployeeType {
  swe(200000),         // obrigatoriamente precisam comecar com minusculas. Enhanced enum precisam ter inicializacao do salary
  finance(250000),
  marketing(150000);   // ponto virgula aqui para separar

  final int salary;
  const EmployeeType(this.salary);
}


class Employee {
  final String name;
  final EmployeeType type;
  Employee (this.name,this.type);

  void fn() {                          // essa funcao com switch exige que todos os cases do switch sejam
    print(type.salary);
    }
  }

/* ENUM também pode ser feito como implements, mas nao vamos entrar nessa parte aqui nesse curso
 * Seria enum EmployeeType implements TalTalTal */
 