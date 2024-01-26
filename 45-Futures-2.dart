// FUTURES - 2

void main() {

  print('Hello...');
  giveAResultAfter2Sec().then((val) { // o programa nao para... chama as tres frases abaixos e soh depois imprime essa parte
    print(val);
  });
  print('frase A');
  print('frase B');
  print('frase C');
}

Future<String> giveAResultAfter2Sec() {
  return Future.delayed(Duration(seconds: 2), () async {return 'Hey!!!!!!!!!';});
}

 /* Funcao antes do delayed acima:
  *  Future<String> giveAResultAfter2Sec() { //aqui elimino async porque jogo o future na funcao return
    return Future(() {return 'Hey!';});   // entretanto, preciso de async pra usar Await
  } */

/*
Future<String> giveAResultAfter2Sec() async { // pra ser future tem de ter async e vice versa
    return 'Hey!';
  }
*/
