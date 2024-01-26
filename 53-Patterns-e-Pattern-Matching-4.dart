// Patterns & Pattern matching -4
void main() {
  List<String> listItems = ['Hi','Man'];

  switch(listItems) {
      case['Hi','Man']:  // Dart verifica se a lista de listItems = lista ['Hi','Man']. Faz o pattern matching
      print('Dude!');
  }


  switch(listItems) {
      case['Hi'||'HI','Man'||'MAN']:  // Dart verifica se a lista de listItems = lista ['Hi','Man']. Faz o pattern matching
      print('Dude!');
  }

  int index = 10;

  switch(listItems) {
      case['Hi' ||'HI','Man' || 'MAN'] when index == 10:  // Dart verifica se a lista de listItems = lista ['Hi','Man']. Faz o pattern matching
      print('Dude!');
    default:
      print('bruh!');
  }
}
