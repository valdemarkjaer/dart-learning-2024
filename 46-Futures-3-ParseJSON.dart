// FUTURES - só existe em Dart, JavaScript (Promises)
// bom para contato com servicos externos, api. Coisas que dependem de rede, imprevisiveis de saber se vao funcionar ou nao
// Futures usam muita exception handling. Têm a ver com Assyncronous programming

// Funcoes que vao executar e que vao gerar resultado ou erro.


/*
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com','users'); // retorna todos os registros
  final response = await http.get(url);

  print(response.body);

    var url2 = Uri.https('jsonplaceholder.typicode.com','users/1'); // retorna o id 1 - veja abaixo a copia do site:
  final response2 = await http.get(url2);

  print(response2.body);

}



/*
Future<String> giveAResultAfter2Sec() {
  return Future.delayed(Duration(seconds: 2), () async {return 'Hey!!!!!!!!!';});
}
*/

/*
 * {
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}
Documentation
*/
*/
