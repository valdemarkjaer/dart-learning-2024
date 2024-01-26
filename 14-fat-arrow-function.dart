void main() {
  // ARROW FUNCTION ou FAT ARROW FUNCTION. Simplifica funcao.
  
  printStuff();
  
  final name = returnStuff2();
  print(name);
  
  
  //print(name);
}

void printStuff() => print('Jaqueline');

String returnStuff2() => 'Meu Amor';
   // nota se você colocar return 'Meu Amor' pensando que tem de
   // declarar explicitamente o retorno da String, dá erro. Não
   // precisa, nem pode, ter a palavra return