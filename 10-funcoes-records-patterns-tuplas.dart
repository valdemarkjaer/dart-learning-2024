void main() {
 // Functions
  print(retornaInt());

  print(retornaBool());

  imprimeNome('Valdemar');

  var (posicao, nomeAmada, amaEla, senteOQue) = retornaRecord('Jaqueline');
  print(posicao);          //observe que retornaRecord devolve uma tupla,
  print(nomeAmada);        //essa funcao que devolve tupla é chamada de
  print(amaEla);           //chamada RECORD no linguajar de DART
  print(senteOQue);        //cada elemento da tupla tem um typeDef

  var tuplaRetornada = retornaRecord('Jaque');
  print (tuplaRetornada);  //aqui dá pra perceber que a variável
  //tupla retornada é uma tupla, uma coleção de variáveis de diferentes
  //typedefs. É possível acessar cada elemento da tupla separadamente:

  print(tuplaRetornada.$1);   // cuidado que o sistema de $1 não é igual
  print(tuplaRetornada.$2);   // acessar listas e arrays, que começam com
  print(tuplaRetornada.$3);   // índice 0. Em sistema de Records, o $
  print(tuplaRetornada.$4);   // começa com 1. Esse esquema é chamado de
                              // PATTERNS
  print(tuplaRetornada.$2.length);
  print(tuplaRetornada.$3.runtimeType);
}

int retornaInt() {
  return 90;
}

bool retornaBool() {
  return 3<1;
}

void imprimeNome(String nome) {
  print('$nome Katayama Kjaer');
}

(int, String, bool, String) retornaRecord (String primeiroNome) {
  return (1, '$primeiroNome Mariano Rogério Kjaer', true, 'Love');
}

/* Observar que nesses exemplos acima de uso de record e patterns, os argumentos devem ser passados na chamada de uma função que aceita múltiplos argumentos na mesma ordem que a "assinatura" da função apresenta. Ou seja, se for uma função void funcaoQualquer (int numero, String nome, String sobrenome, bool flagVF), quando a gente chama a função tem de chamar colocando as variáveis exatamente nessa ordem. Se você trocar a ordem e colocar sobrenome antes do nome, a função vai funcionar porque os dois argumentos são strings, mas foram trocados na chamada...
O nome desse jeito de chamar e definir funções é usando POSITIONAL ARGUMENTS.
Para evitar problemas de chamar função com variáveis fora de ordem ou faltando alguma, Dart tem o recurso das FUNCTIONS NAMED ARGUMENTS, do próximo exemplo. */
