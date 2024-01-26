// Records
// Records sao valores reais.
// Podem armazenar em variaveis, passar eles para funcoes,
// retornar de funcoes e guardar em listas

void main() {
  const records = (56.97, 'Olá"""', true, 2); // record imutavel, nao pode ser modificados
  print(records);
  print(records.$2); // $2 eh um getter. Nao tem setter porque esse records eh constante, imutavel


  const records2 = (4.5, greeting: 'Hi', isAdult: true, 2); // named arguments: greeting, isAdult
  print(records2);
  // erro: print(records2.$isAdult);
  print(records2.$1); // perceba que o ultimo item da lista veio para segundo, ficando na frente de named arguments
  print(records2.$2); // perceba que esse imprime o ultimo item da lista! Pulou os dois named arguments do meio.
  // gera erro ao chamar $ de named argument-> print(records2.$3) e $4 dao erro.


  var records3 = (90.8, greeting3: 'Sai fora!', isAdult: false, 3); // aqui o record eh mutavel, mas eh type safe!
  // perceber que o 4o item da lista quando imprime aparece em segundo, na frente dos named arguments
  // records mutaveis só podem manter o mesmo tipo, na ordem.
  // records3 = (76.0, 'tô fora!', true, 3); -> gera erro
  print('1a versao records3 = $records3');
  records3 = (76.0, greeting3: 'tô fora!', isAdult: true, 3); // precisa escrever de novo como named argument;
  print('2a versao records3 = $records3');

  ({int x, int y, int z}) point = ( x: 1, y: 20, z: 100);
  print(point);
  ({int r, int g, int b}) color = (r: 255, g: 255, b: 255);
  print(color);
  // erro: point = color;
  // point eh um tipo de variavel, xyz e color eh outro tipo de variavel rgb
  ({int r, int g, int b}) color2 = (r: 0, g: 0, b: 0);
  print (color2);
  color = color2;
  print(color);
  final records4 = (giveMeSomeDoubles().point, giveMeSomeDoubles().greeting, 98, 4);
  print(records4);
}

({double point, String greeting}) giveMeSomeDoubles() {
  return (point: 4.5, greeting: 'Hey!');
}
