// ENUMS
void main(){

  final employee1 =Employee('Valdemar', EmployeeType.swe);
  final employee2 = Employee('Fulano', EmployeeType.finance);

  final employee3 = Employee('Sonal', EmployeeType.marketing);

  employee1.fn();
  employee2.fn();
  employee3.fn();
}

enum EmployeeType {
  swe,finance,marketing    // obrigatoriamente precisam comecar com minusculas
}


class Employee {
  final String name;
  final EmployeeType type;
  Employee (this.name,this.type);

  void fn() {                          // essa funcao com switch exige que todos os cases do switch sejam
    switch (type) {                    // tratados. Se tiver um caso sem previsao, o compilador gera erro
      case EmployeeType.swe:
        print('Software Engineer');
      case EmployeeType.finance:
        print('Finance');
      //case EmployeeType.marketing:
      default:                          // ou voce trata caso a caso do switch ou faz um caso default
        print('Marketing');


    }
  }
}
