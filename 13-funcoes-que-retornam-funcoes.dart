void main() {
  // Funcoes que retornam funcoes
  final stuff = getStuff();
  // print(stuff); Essa funcao dá o erro Closure 'printStuff_Closure' 
  print(stuff()); // essa funcao imprime Yoooo e tambem null. Por que?
  print('');
  
  /*
     print(() {          -> esse segmento dá mensagem de erro
     print('yuhuuu');    -> Closure 'main_closure'
    });
  */
  
  print (() {            // aqui imprime yuhuuu e depois null
    print ('Yuhuuuu');     
  }());                  // perceba aqui o () que evita o
                         // clusure main_closure mas gera um null

  print('');
  
  () {                   //ao retirar os dois prints, ficou só 
    print ('Içaaaaa');   // () antes e depois de { }
  } ();                  // () {comandos} ()
  
  print('');
  //JEITO CORRETO DE USAR FUNCAO QUE RETORNA FUNCAO:
  final stuff2 = getStuff();
  stuff2();   // BASTA CHAMAR A VARIAVEL QUE RECEBEU FUNCAO DE
              // RETORNO COMO SE A VARIAVEL FOSSE UMA FUNCAO
              // TAMBEM. VARIAVEL STUFF2 CHAMAR STUFF2();
  
}

Function getStuff() {
  return () {
    print('Yoooo');
  };
}