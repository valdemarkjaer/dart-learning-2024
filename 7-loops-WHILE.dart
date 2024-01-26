void main() {
  // While loop

  // while(condition is true) {...}

  // inicializacao da variavel de controle eh feita antes do while
  String value = 'Hello!';
  int i=0;

  while (i<value.length) {
    print (value[i]);
    i++;

    // while acessa variáveis fora de seu escopo, em qualquer lugar do
    // código no escopo acima. Diferente de for (int i=0... ) onde i
    // só pode ser acessado de dentro do laço.
  }
}
