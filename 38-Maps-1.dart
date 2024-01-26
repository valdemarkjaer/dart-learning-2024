// Maps: geram pares key - value, onde os keys sao unicos.
// Os values podem ser repetidos

void main() {

  Map marks = {          // cria um Map<dynamic,dynamic>
    'Valdemar': 10,
      'Jaqueline': 10,
    'Criancas':9
  };

  Map<String,int> marks2 = { // cria Map<String, int>. Vantagem disso
     'Valdemar': 10,         // eh permitir o uso de metodos das classes
      'Jaqueline': 10,       // das chaves e valores
    'Criancas':9
  };

  print(marks2['Valdemar']?.isEven); //? checa se o value eh int. O sistema nao
                                     // permite o risco de ser um null, entao tem de checar
  print(marks2['Jaqueline'].toString()); // aqui nao precisa checar nada, eh metodo de classe
  print(marks2['Criancas']!.isOdd); // forca a barra. executa comando mesmo sem checagem
                                    // risco eh dar erro de execucao se nao existir um value e vier null
  print(marks2['Pessoa inexistente']?.isEven); // null vem como resposta, ou seja, checou e viu que nao existia

  if(marks2['fulano'] == null) {print('Chave não existe');}
  else { print(marks2['fulano']!.isEven);}  // ! porque já checou no if
}

class Student {
  final String name;
  final int marks;

  Student (this.name, this.marks);
}
