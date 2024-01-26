// Maps: geram pares key - value, onde os keys sao unicos.
// Os values podem ser repetidos

void main() {

  Map<int,String> marks = { // cria Map<String, int>. Vantagem disso
     10: '10',
    20:'20',
    30:'30',     // virgula nao eh necessaria, mas aqui eh ignorada.
  };

  marks[40]='200';
  print(marks);
  marks[10]='100';
  print(marks);

  marks.addAll({40: '900', 50:'upa', 60: 'eita'}); // alem de adicionar novos elementos, mudou o elemento [40]
  print(marks);

  marks.remove(40);
  print(marks);

  for (int i = 0; i<marks.length; i++) {
    print(marks[i]); // existem 5 elementos em map, porem, os indices nao sao 0 a 5. entao
                     // aqui vai imprimir errado, 5x null
  }

  for (int i =0; i<marks.length; i++) { // gera erro, imprime todos os indices varias vezes
    print(marks.keys.toList());
  }

    for (int i =0; i<marks.length; i++) { // agora certo
    print(marks.keys.toList()[i]);
  }

    for (int i =0; i<marks.length; i++) { // agora certo
    print('${marks.keys.toList()[i]} : ${marks.values.toList()[i]}');
  }

  marks.forEach((key, value) {print('$key: $value');}); // faz a mesma coisa do que fizemos acima
}
