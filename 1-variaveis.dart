void main() {
  print('Hello, World');
  print(9);
  print(3+2);
  print(9*89);
  print('23'+'23');
  print('9'*99);
  /*Comentário
   * multilinha
   * do Dart
   * */

  //comentario de uma linha só

  int firstValue = 302; // datatype definido pelo programador = int
  var secondValue = 100; // datatype definido pelo computador ao analisar o programa. Chegará à conclusão de que o datatype correto é int também.
  double thirdValue = 67.90; // datatype definido pelo programador = double
  print('int firstValue');
  print (firstValue * 3);
  print (' ');
  print ('int firstValue * int secondValue');
  print (firstValue * secondValue);
  print (' ');
  print ('double thirdValue');
  print (thirdValue);
  print (' ');
  print ('thirdValue * 76.803');
  print (thirdValue * 76.803);

  dynamic variavelAceitaTudo1 = 90;
  dynamic variavelAceitaTudo2 = 9.8;
  dynamic variavelAceitaTudo3 = "Texto da variavel aceita tudo 3";
  dynamic verdadeoufalso = (3>10);
  print(' ');
  print(' ');
  print('dynamic variavelAceitaTudo1');
  print (variavelAceitaTudo1);
  print(' ');
  print('dynamic variavelAceitaTudo2');
  print (variavelAceitaTudo2);
  print(' ');
  print('dynamic variavelAceitaTudo3');
  print (variavelAceitaTudo3);
  print(' ');
  print('dynamic verdadeoufalso = (3>10)');
  print (verdadeoufalso);
  print(' ');
  print('Agora fazendo a variavelAceitaTudo1 que é dinâmica que tinha int receber o valor de verdadeoufalso dinamica que recebeu um bool');
  variavelAceitaTudo1 = verdadeoufalso;
  print('variavelAceitaTudo1');
  print (variavelAceitaTudo1);

  print (' ');
  print (' ');
  print ('variavelAceitaTudo1 toString');
  print (variavelAceitaTudo1.toString());

  print ('firstValue bitLenght');
  print (firstValue.bitLength);
  print (' ');
  print ('firstValue.isEven');
  print (firstValue.isEven);
  print (' ');
  print ('firstValue.isOdd');
  print (firstValue.isOdd);
  print (' ');
  print ('firstValue sign');
  print (firstValue.sign);
  print (' ');
  print ('firstValue isFinite ');
  print (firstValue.isFinite);
  print (' ');
  print ('firstValue isInfinite');
  print (firstValue.isInfinite);
  print (' ');
  print ('firstValue isNaN');
  print (firstValue.isNaN);
  print (' ');
  print ('firstValue isNegative');
  print (firstValue.isNegative);
  print (' ');
  print ('firstValue runtimeType');
  print (firstValue.runtimeType);
  print (' ');
  print ('variavelAceitaTudo1 runTimeType');
  print (variavelAceitaTudo1.runtimeType);
  print (' ');
  print ('thirdValue abs 67.90');
  print (thirdValue.abs());
  print (' ');
  print (thirdValue.round());
  print(' ');print(' ');print(' ');
  double variavelTeste = 100;
  variavelTeste -= 50;
  print (variavelTeste);
  variavelTeste *= 2;
  print (variavelTeste);
  variavelTeste /= 100;
  print (variavelTeste);
  variavelTeste +=100;
  print (variavelTeste);
  String oie2 ='Olá, Mundo!';
  print ('$oie2 Yahuuuuu');
  print ('${oie2.length} Yupiii');
  print ('O preço da comida está em \$45,00');
  String mensagemMultiLinha = '''tres aspas antes de muitas
  linhas de texto.
  Dá pra escrever um livro. Terminar com tres aspas de novo ''';
  print (mensagemMultiLinha);
  print ('Olá, \nMundo!!!');
}
