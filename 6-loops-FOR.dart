void main() {
  // LOOPS
  
  /*
   for (init; condition; increment/decrement) { ... }
   
     no increment ou decrement não tem de ser apenas adição ou
     subtração. Pode ser qualquer operação aritmética
   
   
   
  */
  
  for (int i = 1 ; i <= 10 ; i++) {
    print('Hello World $i');
  }
  print('');
  
   for (int i = 0 ; i<10 ; i+=2 ) {
    print('Hello World $i');
  }
    print('');
  
  for (int i = 1 ; i <= 10 ; i++) {
    print('Hello World ${i*2}');
  }
    print('');
  
  for (int i = 0 ; i < 10 ; i++) {
    String hi = 'Hello World'; // !!!!!
      // interessante porque eu achava que fazer reinicializacao
      // de mesma String a cada laço daria erro de redefinição
      // da variável com mesmo nome, mas não deu... quer dizer
      // que a cada final de laço as variáveis são destruídas e
      // recriadas novamente?
    print(hi.substring(0,5));
    print(hi.substring(0,i+1));
    print('Hello World $i');
  }
  print('');
  
  
  String helloWorld = 'Hello, World!!!';
  for (int i = 0 ; i <= helloWorld.length ; i++) {
    print(helloWorld.substring(0,i));
    print('i = $i');
  }
}