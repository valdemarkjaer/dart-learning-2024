void main(){
  Cookie1(); // cria um Cookie, mas nada aparece. Quando chamamos
  // uma classe, ela funciona, os construtores sao chamados, mas
  // nem sempre retornam nada especifico pra classe main por
  // causa disso.
  print('Foi criado um Cookie1 antes dessa frase, mas silenciosamente');
  
  print('');
  print(Cookie1());
  print('A frase acima foi criada porque chamamos o construtor dentro de um comando print. Esse comando chamou o construtor da classe Cookie1 e depois o print informou que foi criado o objeto, mas o objeto propriamente dito foi criado silenciosamente na memoria.');
  
  print('');
  print('${Cookie1().size} cm');
  
  print('');
  Cookie1().baking();
  
  print('');
  final isCookie1Cooling = Cookie1().isCooling();
  print (isCookie1Cooling);
  
  // Criando um unico cookie1 de vez em vez de criar uma instancia
  // para cada comando acima...
  Cookie1 biscoitoA = Cookie1();
  biscoitoA.baking();
  print('Tamanho do biscoitoA = ${biscoitoA.size} cm');
  
  final biscoitoB = Cookie1();
  biscoitoB.baking();
  print('Formato atual do biscoitoB: ${biscoitoB.shape}');
  biscoitoB.shape='rectangle';
  print('Feita mudança do formato. Formato atuao do biscoitoB: ${biscoitoB.shape}');
  // perceba que apesar de biscoitoB ser final, as variaveis
  // internas podem mudar porque nao foram definidas como final
}

/* Classes são blueprints ou templates para criar objetos
 * nomes de classes são em PascalCase
*/

class Cookie1 {
  // variables
  String shape = 'Circle';
  double size = 15.2 ; //cm
  
  
  // methods -> as funções dentro de classe mudam de nome.
  // Funções fora de classe chamamos de functions mesmo
  void baking() {
    print ('baking started');
  }
  
  bool isCooling() {
    return false;
  }
}