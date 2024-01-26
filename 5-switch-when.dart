void main() {
  //operadores ternarios - ternary

  String someValue = 'ni!';

  String value = someValue.startsWith('H') ? 'Wow!' : 'Naha';
  print(value);

  bool temH = someValue.startsWith('H') ? true : false;
  print(temH);


  // Switch Statement

  switch(someValue) {
    case 'Hi!':
      print('Tem Hi!');
    case 'Xi!':
      print('Tem Xi!');
    case 'opa':
      break; // Ã© obrigatÃ³rio colocar break em cases vazios.
             // em Java todo case tem de ter break obrigatÃ³rio,
             // mas em Dart3 nÃ£o precisa pÃ´r break em todos os cases.
    default:
      print ('Nem um, nem outro.');
  }

  // atÃ© o Dart3, Switch nÃ£o permite usar operadores relacionais
  // tais como ==, !=
  // <, >, >=, <=.

  //Uso interessante de nao colocar break em case vazio: permitir
  // o mesmo default para uma lista de diferentes casos:

  int valorTeste = 9; //testar colocando 0, 4, 10, 90

  switch(valorTeste) {
    case 0:
      print('O valorTeste Ã© = ');
      print(valorTeste);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    default:
      if (valorTeste>5 && valorTeste !=90) {print('o valorTeste Ã© maior que 5 e diferente de 90');}
          else if (valorTeste<5) {print('valorTeste estÃ¡ entre 1 e 5');}
          else print('valorTeste = 90');

      // se tivesse break nos cases 1 a 5 nÃ£o chegaria atÃ© o default
  }


  //operadores ==, !=, >, <, >=, <= nao podem existir no corpo
  //do switch, mas dÃ¡ pra por isso usando WHEN em cases

  int age = 19; // brincar com valores acima ou abaixo de 20
  someValue = 'Hi!'; // brincar com Xi, Ni, Ri, e outros
  switch(someValue) {
    case 'Hi!' when age>= 20:
      print('Yep!');
    case 'Hi!'when age < 20:
      print('Yo!');
    case 'Xi!':
      break;
    case 'Ni!':
    case 'Ri!':
    default:
      print('Ni, Ri ou qualquer coisa menos Hi e Xi - inclusive nada');
  }

  // OUTRA FORMA DE FAZER SWITCH, MAS COM FAT ARROWS:
  int page = 0;
  int lastPage = 1;
  final text = switch(page) {
      0 => 'Click here',
      1 => 'Click Me!',
      _ => 'None',   // _ significa Default
  };
  print(text);

  // SWITCH FAT ARROW COM WHEN:
    int pageB = 0;
  int lastPageB = 1;
  final textB = switch(lastPageB) {
      0 => 'Click here',
      1 when pageB == lastPageB => 'Click Me!',
      _ => 'None',   // _ significa Default
  };
  print(textB);
}
