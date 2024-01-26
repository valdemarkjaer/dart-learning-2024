void main() {
  // ANONYMOUS FUNCTIONS
  // Não têm nome, mas se comportam como funções.
  // Blocos de código que podem ser executados
  // Exemplo: () { print('qualquer coisa');}
  //
  // Muito usado em Flutter. Também em retornos de funções que
  // retornam funções (veja item 13 do meu caderno de notas)

final variavelRecebeFuncao1 = escolheFuncao(1);
variavelRecebeFuncao1();

final variavelRecebeFuncao2 = escolheFuncao(2);
variavelRecebeFuncao2();

}

Function escolheFuncao(int opcao) { // Retorna usando funcao anonima
  
switch(opcao) {
  case 1:
    return () {print('Caso 1 chamado');};
  case 2:
    return () {print('Caso 2 chamado');};
  default:
    return () {print('Caso diferente de 1 e de 2 chamado');};
}
}