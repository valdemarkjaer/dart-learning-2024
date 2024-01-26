/*

// FUTURES - só existe em Dart, JavaScript (Promises)
// bom para contato com servicos externos, api. Coisas que dependem de rede, imprevisiveis de saber se vao funcionar ou nao
// Futures usam muita exception handling. Têm a ver com Assyncronous programming

// Funcoes que vao executar e que vao gerar resultado ou erro.

void main() async { // tem de colocar async pra poder usar await abaixo
                    // leia sobre Future<void> main() async versus void main() async

  print('Hello...');
  final result = await giveAResultAfter2Sec();
  print(result);
  giveAResultAfter2Sec();
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

  print('Valdemar');
}
*/
