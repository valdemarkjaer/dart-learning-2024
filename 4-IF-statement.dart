void main() {
  // If else elseif
  int age1 = 22;
  bool isAllowed = false;


  if (age1>= 21) {print('Adult 21+');}
  else if(age1>= 18) {print('Adult 18-20');}
  else {print('Child');}

  var age2 = 99;

  if (age2==age1) {print('idades 1 e 2 são iguais');}
  else if (age2!=99) {print('age2 é diferente de 99');}
  else if (age2 == 99 && !isAllowed ) {print('age2 = 99 e !isAllowed = false');}
   // ! antes de variavel = not, negacao, inversao
   // !isAllowed é mesma coisa que isAllowed == true
   // && = and
   // || = or
  // dá errado, age2 nao eh variavel bool.->else if (age2) {print('Age2 definida');}
  else if (age2.bitLength>= 16) {print('Blabla');}
  else {print('final');}
}
