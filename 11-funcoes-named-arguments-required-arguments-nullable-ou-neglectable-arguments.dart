void main() {
  String name ='Jaqueline';
  // chamando funcao com named arguments simples:
  printName (name: name, age: 37, greetings: 'Olá!'); // para chamar function named arguments precisa ter a identificacao do que é a variavel na chamada
  printName (age:37, greetings: 'Tchau', name:name); // posso colocar na ordem que quiser. Não é positional argument, é named argument

  // chamando funcao com named argument nullable (negligenciavel)
  printOutro (name: name, age: 37); // aqui chamo funcao com apenas dois parametros. O terceiro, que seria greetings, nao eh requerido

  // chamando funcao com mistura de positional argument e named argument
  printMistura(true, 1986, name: name, greetings: 'Hola'); // os valores posicionais têm de vir antes dos nomeados
}    


// FUNCTION NAMED ARGUMENTS - SINTAXE: datatype function ({ variaveis });

void printName({required String name, required int age, required String greetings}){
 print(name);
 print(age);
 print(greetings); 
}

void printOutro ({required String name, String? greetings, required int age}) {
  print(name);          // recebeu argumento na chamada da funcao
  print(age);           // recebeu argumento na chamada da funcao
  print(greetings);     // nao recebeu argumento, o parametro foi ignorado na chamada
}

void printMistura (bool estadoFV, int anoNascimento, {required String name, int? age, required String greetings}){
  //perceber que os argumentos posicionais PRECISAM ESTAR ANTES dos argumentos nomeados
  print (estadoFV);
  print (anoNascimento);
  print (name);
  print (age);
  print (greetings);
}