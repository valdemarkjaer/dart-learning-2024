// Patterns & Pattern matching -2
void main() {

  final jsoned = {
    "userId":1,
    "id": 1,
    "title": "sunt aut facere repellat provident",
    "body": "quia et suscipit\nsuscipit recusandae",
  };

  print(jsoned);            // jeito antigo
  print(jsoned["title"]);   // jeito antigo
  print('');

  final{'userId': userId, 'title': title, 'id': id, 'body': b} = jsoned; //Mapeamento
  print(userId);
  print(b); print('');


  //Jeito melhor ainda: testar se o parse do json pega variaveis de tipos corretos:

  if(jsoned case {'userId': int userId, 'title': String title, 'id': int id, 'body':String b}) {
    print(userId);
    print(title);
    print(b);
  } else {
    print('incorrect JSON');
  }
}
